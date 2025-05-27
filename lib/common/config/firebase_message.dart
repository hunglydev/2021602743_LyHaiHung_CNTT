import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:hunglydev_datn/common/injector/app_di.dart';
import 'package:hunglydev_datn/common/util/share_preference_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print("Title: ${message.notification?.title}");
  print("body: ${message.notification?.body}");
  print("payload: ${message.data}");
}

class AppFirebaseMessaging {
  final _firebaseMessaging = FirebaseMessaging.instance;

  final _androidChannel = const AndroidNotificationChannel(
    'high_importance_channel',
    'High importance notification',
    description: "This channel is used for important notification",
    importance: Importance.defaultImportance,
  );

  final _localNotifications = FlutterLocalNotificationsPlugin();

  void handleMessaging(RemoteMessage? message) {
    if (message == null) {
      return;
    }
    // navigatorKey.currentState?.pushNamed(NotificationScreen.route, arguments: message);
  }

  Future initLocalNotifications() async {
    const ios = DarwinInitializationSettings();
    const android = AndroidInitializationSettings('@drawable/ic_launcher');
    const setting = InitializationSettings(android: android, iOS: ios);

    await _localNotifications.initialize(
      setting,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        if (response.payload != null) {
          try {
            Map<String, dynamic> data = jsonDecode(response.payload!);
            RemoteNotification? notification;
            if (data.containsKey('title') && data.containsKey('body')) {
              notification = RemoteNotification(
                title: data['title'],
                body: data['body'],
              );
            }
            RemoteMessage message = RemoteMessage(
              notification: notification,
            );
            handleMessaging(message);
          } catch (e) {
            print("Error decoding payload: $e");
          }
        }
      },
    );
    final platform =
        _localNotifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    await platform?.createNotificationChannel(_androidChannel);
  }

  Future initPushNotifications() async {
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    FirebaseMessaging.instance.getInitialMessage().then(handleMessaging);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessaging);
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);

    FirebaseMessaging.onMessage.listen(
      (event) {
        final notifications = event.notification;
        if (notifications == null) {
          return;
        } else {
          _localNotifications.show(
              notifications.hashCode,
              notifications.title,
              notifications.body,
              NotificationDetails(
                android: AndroidNotificationDetails(
                  _androidChannel.id,
                  _androidChannel.name,
                  channelDescription: _androidChannel.description,
                  icon: '@drawable/ic_launcher',
                ),
              ),
              payload: jsonEncode(notifications.toMap()));
        }
      },
    );
  }

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    await getIt<SharePreferenceUtils>().setString('fcm_token', fCMToken ?? '');
    print("Token: ${getIt<SharePreferenceUtils>().getString('fcm_token')}");
    initPushNotifications();
    initLocalNotifications();
  }
}
