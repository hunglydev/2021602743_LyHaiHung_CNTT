import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/config/firebase_message.dart';
import 'package:hunglydev_datn/firebase_options.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:hunglydev_datn/presentation/controller/app_controller.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'common/config/hive_config/hive_config.dart';
import 'common/constants/app_route.dart';
import 'common/injector/app_di.dart';
import 'common/util/app_notification_local.dart';
import 'common/util/share_preference_utils.dart';
import 'presentation/app_page.dart';

late AndroidNotificationChannel channel;

late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  timeago.setLocaleMessages('vi', timeago.ViMessages()); // 👈 Thêm dòng này

  configDI();
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  final hiveConfig = getIt<HiveConfig>();
  await hiveConfig.init();
  await getIt<SharePreferenceUtils>().init();
  AppNotificationLocal.initNotificationLocal();

  tz.initializeTimeZones();
  tz.setLocalLocation(tz.getLocation(await FlutterTimezone.getLocalTimezone()));

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await AppFirebaseMessaging().initNotification();

  //receive message when background
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  Get.put(AppController());
  runApp(
    ScreenUtilInit(
      designSize: const Size(414, 736),
      builder: (context, widget) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // initialBinding: AppBinding(),
        initialRoute: AppRoute.splashScreen,
        defaultTransition: Transition.fade,
        getPages: AppPage.pages,
        localizationsDelegates: const [
          AppLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        locale: Get.find<AppController>().currentLocale.value,
        supportedLocales: AppLocalization.delegate.supportedLocales,
        theme: ThemeData(
          primaryColor: Colors.white,
          iconButtonTheme: IconButtonThemeData(
            style: ButtonStyle(
              iconColor: WidgetStateProperty.resolveWith<Color>(
                (states) {
                  return Colors.white;
                },
              ),
            ),
          ),
          fontFamily: 'Poppins',
          textSelectionTheme: const TextSelectionThemeData(
            selectionHandleColor: Colors.transparent,
          ),
        ),
      ),
    ),
  );
}
