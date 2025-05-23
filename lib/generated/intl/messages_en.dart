// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(value) => "BMI ${value}";

  static String m1(priceOfWeek, week, priceOfMonth, month, priceOfYear, year) =>
      "This subscription automatically renews after 3-days trial period for ${priceOfWeek}/${week}, ${priceOfMonth}/${month} and ${priceOfYear}/${year}, you can cancel it anytime. Payment will be charged to your Google Play account at the confirmation of purchase. Subscription automatically renews unless it is canceled at least 24 hours before the end of the current period. You can manage and cancel your subscriptions by going to your account settings on the GooglePlay after purchase. Any unused part or time-span of a free trial period will be forfeited, as soon as you purchase a subscriptions.";

  static String m2(priceOfFullPack) =>
      "You only need to pay ${priceOfFullPack} for this payment once and use it for life, no trial period. Payment will be charged to your Google Play account at confirmation of purchase. If it\'s been less than 48 hours since you made an app purchase or in-app purchase: You can request a refund through Google Play. After you request a refund through the Google Play website.";

  static String m3(sys, dia) => "Sys ${sys} and DIA ${dia}";

  static String m4(sys, dia) => "Systolic ${sys} or Diastolic ${dia}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "account": MessageLookupByLibrary.simpleMessage("Account"),
    "add": MessageLookupByLibrary.simpleMessage("Add"),
    "addAlarmFailed": MessageLookupByLibrary.simpleMessage(
      "Failed to add alarm",
    ),
    "addAlarmSuccessful": MessageLookupByLibrary.simpleMessage(
      "Alarm successfully added",
    ),
    "addData": MessageLookupByLibrary.simpleMessage("Add Data"),
    "addDataFailed": MessageLookupByLibrary.simpleMessage("Add failed data"),
    "addDataSuccess": MessageLookupByLibrary.simpleMessage(
      "Add data successfully",
    ),
    "addSuccess": MessageLookupByLibrary.simpleMessage("Add data successfully"),
    "addYourRecordToSeeStatisitcs": MessageLookupByLibrary.simpleMessage(
      "Add your record to see statisitcs",
    ),
    "afterEating1hCode": MessageLookupByLibrary.simpleMessage(
      "After eating (1h)",
    ),
    "afterEating2hCode": MessageLookupByLibrary.simpleMessage(
      "After eating (2h)",
    ),
    "afterWorkoutCode": MessageLookupByLibrary.simpleMessage("After workout"),
    "age": MessageLookupByLibrary.simpleMessage("Age"),
    "alarm": MessageLookupByLibrary.simpleMessage("Alarm"),
    "allow": MessageLookupByLibrary.simpleMessage("Allow"),
    "average": MessageLookupByLibrary.simpleMessage("Average"),
    "backToLogin": MessageLookupByLibrary.simpleMessage("Back to login"),
    "barcode": MessageLookupByLibrary.simpleMessage("Barcode"),
    "beforeBedtimeCode": MessageLookupByLibrary.simpleMessage("Before bedtime"),
    "beforeEatingCode": MessageLookupByLibrary.simpleMessage("Before eating"),
    "beforeWorkoutCode": MessageLookupByLibrary.simpleMessage("Before workout"),
    "bestOffer": MessageLookupByLibrary.simpleMessage("BEST OFFER"),
    "birthDay": MessageLookupByLibrary.simpleMessage("Birthday"),
    "bloodHealth": MessageLookupByLibrary.simpleMessage("Blood Health"),
    "bloodPressure": MessageLookupByLibrary.simpleMessage("Blood Pressure"),
    "bloodPressureNoti0": MessageLookupByLibrary.simpleMessage(
      "It\'s time to record your blood pressure!",
    ),
    "bloodPressureNoti1": MessageLookupByLibrary.simpleMessage(
      "Track your pressure now and see the differences in your chart!",
    ),
    "bloodPressureNoti2": MessageLookupByLibrary.simpleMessage(
      "Have you recorded blood pressure today? Tap here to track!",
    ),
    "bloodPressureNoti3": MessageLookupByLibrary.simpleMessage(
      "High blood pressure can lead to stroke. Record your blood pressure now.",
    ),
    "bloodPressureNoti4": MessageLookupByLibrary.simpleMessage(
      "Stay healthy by tracking your blood pressure!",
    ),
    "bloodPressureNoti5": MessageLookupByLibrary.simpleMessage(
      "Have you added blood pressure data yet? Keep tracking to maintain normal blood pressure.",
    ),
    "bloodPressureNoti6": MessageLookupByLibrary.simpleMessage(
      "Notice high blood pressure symptoms with our tracker! Tap here to use.",
    ),
    "bloodPressureNoti7": MessageLookupByLibrary.simpleMessage(
      "Check your blood pressure now and tap here to record it!",
    ),
    "bloodPressureNoti8": MessageLookupByLibrary.simpleMessage(
      "It’s time to check your blood pressure and record it here!",
    ),
    "bloodPressureNoti9": MessageLookupByLibrary.simpleMessage(
      "Stay healthy with blood pressure tracker and notice high or low blood pressure symptoms with our tracker!",
    ),
    "bloodSugar": MessageLookupByLibrary.simpleMessage("Blood Sugar"),
    "bloodSugarAllState": MessageLookupByLibrary.simpleMessage("All types"),
    "bloodSugarDefaultState": MessageLookupByLibrary.simpleMessage("Default"),
    "bloodSugarInfo": MessageLookupByLibrary.simpleMessage("Information"),
    "bloodSugarInforDiabetes": MessageLookupByLibrary.simpleMessage("Diabetes"),
    "bloodSugarInforLow": MessageLookupByLibrary.simpleMessage("Low"),
    "bloodSugarInforNormal": MessageLookupByLibrary.simpleMessage("Normal"),
    "bloodSugarInforPreDiabetes": MessageLookupByLibrary.simpleMessage(
      "Pre-diabetes",
    ),
    "bloodSugarNoti0": MessageLookupByLibrary.simpleMessage(
      "Log your blood sugar daily for better health!",
    ),
    "bloodSugarNoti1": MessageLookupByLibrary.simpleMessage(
      "It\'s time to record your blood sugar!",
    ),
    "bloodSugarNoti2": MessageLookupByLibrary.simpleMessage(
      "Blood sugar level can tell your health state. Check now and record it with our app!",
    ),
    "bloodSugarNoti3": MessageLookupByLibrary.simpleMessage(
      "Blood sugar level can be used to test diabetes condition tap here to track now!",
    ),
    "bloodSugarNoti4": MessageLookupByLibrary.simpleMessage(
      "Diabetes and other health condition can be spotted by blood sugar level. Track now and record it with our app!",
    ),
    "bloodSugarNoti5": MessageLookupByLibrary.simpleMessage(
      "Understanding normal blood sugar level and check yours by tapping here!",
    ),
    "bloodSugarNoti6": MessageLookupByLibrary.simpleMessage(
      "High blood sugar condition can be critical and dangerous. Check your condition now!",
    ),
    "bloodSugarNoti7": MessageLookupByLibrary.simpleMessage(
      "Protect yourself by checking blood sugar frequently with our app!",
    ),
    "bloodSugarNoti8": MessageLookupByLibrary.simpleMessage(
      "Low blood sugar can be dangerous. Check your blood sugar level now and record it with our app.",
    ),
    "bloodSugarNoti9": MessageLookupByLibrary.simpleMessage(
      "See chart of normal blood sugar level and check yours with our app!",
    ),
    "bloodSugarState": MessageLookupByLibrary.simpleMessage("State"),
    "bmi": MessageLookupByLibrary.simpleMessage("BMI"),
    "bmiMessage": m0,
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "checkYourBloodPressure": MessageLookupByLibrary.simpleMessage(
      "Check your blood pressure to track your heart",
    ),
    "checkYourBloodSugar": MessageLookupByLibrary.simpleMessage(
      "Check your blood sugar to track your heart",
    ),
    "checkYourHeartRate": MessageLookupByLibrary.simpleMessage(
      "Check your heart rate to track your heart",
    ),
    "checkYourWeightAndBMI": MessageLookupByLibrary.simpleMessage(
      "Check your weight and BMI to track your heart",
    ),
    "chooseLanguage": MessageLookupByLibrary.simpleMessage("Choose language"),
    "choseYourAge": MessageLookupByLibrary.simpleMessage("Chose your age"),
    "choseYourGender": MessageLookupByLibrary.simpleMessage(
      "Chose your gender",
    ),
    "clickHereToRegister": MessageLookupByLibrary.simpleMessage(
      "Click here to register",
    ),
    "close": MessageLookupByLibrary.simpleMessage("Close"),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage("Confirm password"),
    "contactUs": MessageLookupByLibrary.simpleMessage("Contact us"),
    "contactWithUs": MessageLookupByLibrary.simpleMessage("Contact with us"),
    "continues": MessageLookupByLibrary.simpleMessage("Continue"),
    "date": MessageLookupByLibrary.simpleMessage("Date"),
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "deleteAlarmConfirmMsg": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete this alarm?",
    ),
    "deleteAlarmFailed": MessageLookupByLibrary.simpleMessage(
      "Failed to delete alarm",
    ),
    "deleteAlarmSuccess": MessageLookupByLibrary.simpleMessage(
      "Alarm deleted successfully",
    ),
    "deleteData": MessageLookupByLibrary.simpleMessage("Delete data"),
    "deleteDataConfirm": MessageLookupByLibrary.simpleMessage(
      "Do you want to delete this data?",
    ),
    "deleteDataFailed": MessageLookupByLibrary.simpleMessage(
      "Delete data failed",
    ),
    "deleteDataSuccess": MessageLookupByLibrary.simpleMessage(
      "Delete data successfully",
    ),
    "descriptionHeartRate": MessageLookupByLibrary.simpleMessage(
      "You can measure your heart rate by camera phone",
    ),
    "descriptionSub": m1,
    "descriptionSub1": m2,
    "diastolic": MessageLookupByLibrary.simpleMessage("Diastolic"),
    "duringFastingCode": MessageLookupByLibrary.simpleMessage("During fasting"),
    "edit": MessageLookupByLibrary.simpleMessage("Edit"),
    "editDataFailed": MessageLookupByLibrary.simpleMessage("Edit failed data"),
    "editDataSuccess": MessageLookupByLibrary.simpleMessage(
      "Edit data successfully",
    ),
    "elevated": MessageLookupByLibrary.simpleMessage("Elevated"),
    "elevatedMessage": MessageLookupByLibrary.simpleMessage(
      "A bit hight. It is recommended that you keep a regular record of your blood pressure and consider making changes to improve your health",
    ),
    "email": MessageLookupByLibrary.simpleMessage("Email"),
    "en": MessageLookupByLibrary.simpleMessage("English"),
    "english": MessageLookupByLibrary.simpleMessage("English"),
    "errorLoadAds": MessageLookupByLibrary.simpleMessage(
      "The function is not ready, please try again in a moment",
    ),
    "export": MessageLookupByLibrary.simpleMessage("Export"),
    "fast": MessageLookupByLibrary.simpleMessage("Fast"),
    "female": MessageLookupByLibrary.simpleMessage("Female"),
    "foodScanner": MessageLookupByLibrary.simpleMessage("Food Scanner"),
    "forSomething": MessageLookupByLibrary.simpleMessage("for"),
    "fullName": MessageLookupByLibrary.simpleMessage("Full name"),
    "gender": MessageLookupByLibrary.simpleMessage("Gender"),
    "goPremium": MessageLookupByLibrary.simpleMessage("Go Premium"),
    "healthConsultingAi": MessageLookupByLibrary.simpleMessage(
      "Health consulting AI",
    ),
    "heartRate": MessageLookupByLibrary.simpleMessage("Heart Rate"),
    "heartRateButton": MessageLookupByLibrary.simpleMessage("Measure Now"),
    "heartRateNoti0": MessageLookupByLibrary.simpleMessage(
      "Check your BPM to track your heart health!",
    ),
    "heartRateNoti1": MessageLookupByLibrary.simpleMessage(
      "Measure and track BPM with your device now!",
    ),
    "heartRateNoti2": MessageLookupByLibrary.simpleMessage(
      "It’s time to measure your BPM!",
    ),
    "heartRateNoti3": MessageLookupByLibrary.simpleMessage(
      "BPM can point out your health status check and record now!",
    ),
    "heartRateNoti4": MessageLookupByLibrary.simpleMessage(
      "It\'s time to check your heart rate! Tap here to measure and record.",
    ),
    "heartRateNoti5": MessageLookupByLibrary.simpleMessage(
      "Track your heart rate to see whether it is normal or not!",
    ),
    "heartRateNoti6": MessageLookupByLibrary.simpleMessage(
      "Physical activities and emotional states can affect your heart rate. Check now and record by tapping here.",
    ),
    "heartRateNoti7": MessageLookupByLibrary.simpleMessage(
      "Have a minute? Check and record your heart rate now.",
    ),
    "heartRateNoti8": MessageLookupByLibrary.simpleMessage(
      "Hey!!! It\'s time to check your heart rate with our app.",
    ),
    "heartRateNoti9": MessageLookupByLibrary.simpleMessage(
      "Stay healthy by tracking your heart rate frequently with us!",
    ),
    "height": MessageLookupByLibrary.simpleMessage("Height"),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "howOldAreYou": MessageLookupByLibrary.simpleMessage("How old are you?"),
    "hypertensionCrisis": MessageLookupByLibrary.simpleMessage(
      "Hypertension Crisis",
    ),
    "hypertensionCrisisMessage": MessageLookupByLibrary.simpleMessage(
      "We are worried about you, please call emergency services immediately",
    ),
    "hypertensionStage1": MessageLookupByLibrary.simpleMessage(
      "Hypertension Stage 1",
    ),
    "hypertensionStage1Message": MessageLookupByLibrary.simpleMessage(
      "Oh! your blood pressure is higher than normal. If happens 3 or more times, you’d better see your doctor for some prescriptions",
    ),
    "hypertensionStage2": MessageLookupByLibrary.simpleMessage(
      "Hypertension Stage 2",
    ),
    "hypertensionStage2Message": MessageLookupByLibrary.simpleMessage(
      "Attention! If you\'ve got 3 or more results in the range, your doctor\'s advice and immediate medical treatment are necessary",
    ),
    "hypotension": MessageLookupByLibrary.simpleMessage("Hypotension"),
    "hypotensionMessage": MessageLookupByLibrary.simpleMessage(
      "Your blood pressure seems a little low. Please seek help from your doctor if it remains low for a long time",
    ),
    "insights": MessageLookupByLibrary.simpleMessage("Insights"),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "loading": MessageLookupByLibrary.simpleMessage("Loading"),
    "login": MessageLookupByLibrary.simpleMessage("Login"),
    "logout": MessageLookupByLibrary.simpleMessage("Logout"),
    "male": MessageLookupByLibrary.simpleMessage("Male"),
    "max": MessageLookupByLibrary.simpleMessage("Max"),
    "measure": MessageLookupByLibrary.simpleMessage("Measure"),
    "measureNow": MessageLookupByLibrary.simpleMessage("Measure Now"),
    "measureNowOrAdd": MessageLookupByLibrary.simpleMessage(
      "Measure now or add your record to see statistics",
    ),
    "measuring": MessageLookupByLibrary.simpleMessage("Measuring"),
    "min": MessageLookupByLibrary.simpleMessage("Min"),
    "month": MessageLookupByLibrary.simpleMessage("Month"),
    "moreApp": MessageLookupByLibrary.simpleMessage("More app"),
    "newProduct": MessageLookupByLibrary.simpleMessage("New Product"),
    "next": MessageLookupByLibrary.simpleMessage("Next"),
    "noAds": MessageLookupByLibrary.simpleMessage("No Ads"),
    "noAlarm": MessageLookupByLibrary.simpleMessage(
      "It seems like you haven\'t add any alarm. Press + to add one!",
    ),
    "noInformation": MessageLookupByLibrary.simpleMessage("No Information"),
    "noNetContent": MessageLookupByLibrary.simpleMessage(
      "No internet connection, please try again later",
    ),
    "noNetTitle": MessageLookupByLibrary.simpleMessage(
      "No internet connection",
    ),
    "normal": MessageLookupByLibrary.simpleMessage("Normal"),
    "normalMessage": MessageLookupByLibrary.simpleMessage(
      "Great! Your blood pressure is in the healthy range. Just keep it!",
    ),
    "notice": MessageLookupByLibrary.simpleMessage("Notice"),
    "notification": MessageLookupByLibrary.simpleMessage("Notification"),
    "obeseClassI": MessageLookupByLibrary.simpleMessage("Obese Class I"),
    "obeseClassII": MessageLookupByLibrary.simpleMessage("Obese Class II"),
    "obeseClassIII": MessageLookupByLibrary.simpleMessage("Obese Class III"),
    "ok": MessageLookupByLibrary.simpleMessage("Ok"),
    "only": MessageLookupByLibrary.simpleMessage("Only"),
    "overweight": MessageLookupByLibrary.simpleMessage("Overweight"),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "passwordNotMatch": MessageLookupByLibrary.simpleMessage(
      "Password not match",
    ),
    "pause": MessageLookupByLibrary.simpleMessage("Pause"),
    "pedestrianStatus": MessageLookupByLibrary.simpleMessage(
      "Pedestrian status",
    ),
    "pedometer": MessageLookupByLibrary.simpleMessage("Pedometer"),
    "perMonth": MessageLookupByLibrary.simpleMessage("per Month"),
    "perWeek": MessageLookupByLibrary.simpleMessage("per Week"),
    "perYear": MessageLookupByLibrary.simpleMessage("per Year"),
    "permissionCameraDenied01": MessageLookupByLibrary.simpleMessage(
      "Please allow the app to access the device\'s camera to measure heart rate",
    ),
    "permissionCameraDenied02": MessageLookupByLibrary.simpleMessage(
      "Please allow the app to access your device\'s camera to scan the code",
    ),
    "permissionCameraSetting01": MessageLookupByLibrary.simpleMessage(
      "Please go to settings and allow the app to access your device\'s camera to measure heart rate",
    ),
    "permissionCameraSetting02": MessageLookupByLibrary.simpleMessage(
      "Please go to the settings and allow the app to access the device\'s camera to scan the code",
    ),
    "permissionDenied": MessageLookupByLibrary.simpleMessage(
      "Permission denied",
    ),
    "permissionDeniedMessage": MessageLookupByLibrary.simpleMessage(
      "Please grant location access to the app to use this function.",
    ),
    "placeYourFinger": MessageLookupByLibrary.simpleMessage(
      "Place your finger on camera",
    ),
    "pleaseTryAgain": MessageLookupByLibrary.simpleMessage("Please try again"),
    "privacy": MessageLookupByLibrary.simpleMessage("Privacy"),
    "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
    "product": MessageLookupByLibrary.simpleMessage("Product"),
    "pulse": MessageLookupByLibrary.simpleMessage("Pulse"),
    "qrCode": MessageLookupByLibrary.simpleMessage("QR code"),
    "questionWhere": MessageLookupByLibrary.simpleMessage(
      "Where are you from?",
    ),
    "register": MessageLookupByLibrary.simpleMessage("Register"),
    "remindToRecord": MessageLookupByLibrary.simpleMessage("Remind to record"),
    "removeAds": MessageLookupByLibrary.simpleMessage("Remove Ads"),
    "requestPermission": MessageLookupByLibrary.simpleMessage(
      "Request Permission",
    ),
    "reset": MessageLookupByLibrary.simpleMessage("Reset"),
    "restingHeartRate": MessageLookupByLibrary.simpleMessage(
      "Resting Heart Rate",
    ),
    "restore": MessageLookupByLibrary.simpleMessage("Restore purchase"),
    "resume": MessageLookupByLibrary.simpleMessage("Resume"),
    "retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "rhFastMessage": MessageLookupByLibrary.simpleMessage(
      "Cautious! Your heart rate is higher than normal",
    ),
    "rhNormalMessage": MessageLookupByLibrary.simpleMessage(
      "Great! Your heart rate remains in the normal range",
    ),
    "rhSlowMessage": MessageLookupByLibrary.simpleMessage(
      "Cautious! Your heart rate is too low",
    ),
    "save": MessageLookupByLibrary.simpleMessage("Save"),
    "scanFood": MessageLookupByLibrary.simpleMessage("Scan Food/Pharmacy"),
    "scanResult": MessageLookupByLibrary.simpleMessage("Scan result"),
    "selectLocation": MessageLookupByLibrary.simpleMessage(
      "The following information will help you in your health monitoring process",
    ),
    "setAlarm": MessageLookupByLibrary.simpleMessage("Set Alarm"),
    "setting": MessageLookupByLibrary.simpleMessage("Setting"),
    "severelyUnderweight": MessageLookupByLibrary.simpleMessage(
      "Severely underweight",
    ),
    "shareApp": MessageLookupByLibrary.simpleMessage("Share app"),
    "shareMessage": MessageLookupByLibrary.simpleMessage(
      "Install to update outside temperature, humidity, weekly weather forecast and AQI to protect yourself and your family",
    ),
    "slow": MessageLookupByLibrary.simpleMessage("Slow"),
    "someThingWentWrong": MessageLookupByLibrary.simpleMessage(
      "Something went wrong, please try again",
    ),
    "stepTaken": MessageLookupByLibrary.simpleMessage("Step taken"),
    "stop": MessageLookupByLibrary.simpleMessage("Stop"),
    "stopped": MessageLookupByLibrary.simpleMessage("Stopped"),
    "subscribeAutoRenewable": MessageLookupByLibrary.simpleMessage(
      "Auto-renewable. Cancel anytime",
    ),
    "subscribeContentAndroid1": MessageLookupByLibrary.simpleMessage(
      "Start your 3 Days Free trial",
    ),
    "subscribeContentAndroid2": MessageLookupByLibrary.simpleMessage(
      "Unlimited measurements",
    ),
    "subscribeContentAndroid3": MessageLookupByLibrary.simpleMessage(
      "Export your health data anytime",
    ),
    "subscribeContentAndroid4": MessageLookupByLibrary.simpleMessage(
      "Measure without interruption",
    ),
    "subscribeContentAndroid5": MessageLookupByLibrary.simpleMessage(
      "Remove ads",
    ),
    "subscribeContentAndroid6": MessageLookupByLibrary.simpleMessage(
      "Measure your heart rate and health data tracking ",
    ),
    "subscribeContentIos1": MessageLookupByLibrary.simpleMessage(
      "Unlimited measurements",
    ),
    "subscribeContentIos2": MessageLookupByLibrary.simpleMessage(
      "Access to Blood sugar journal; Weight & BMI tracker and more,...",
    ),
    "subscribeContentIos3": MessageLookupByLibrary.simpleMessage(
      "Export your health data anytime",
    ),
    "subscribeContentIos4": MessageLookupByLibrary.simpleMessage(
      "Set alarm to measure your vital signs",
    ),
    "subscribeContentIos5": MessageLookupByLibrary.simpleMessage("Remove ads"),
    "subscribeContentIos6": MessageLookupByLibrary.simpleMessage("Remove ads"),
    "subscribeTitle": MessageLookupByLibrary.simpleMessage(
      "Premium Health log",
    ),
    "success": MessageLookupByLibrary.simpleMessage("Success"),
    "sysAndDIA": m3,
    "systolic": MessageLookupByLibrary.simpleMessage("Systolic"),
    "systolicRangeOrDiastolicRange": m4,
    "termAndService": MessageLookupByLibrary.simpleMessage(
      "Terms and services",
    ),
    "termOfCondition": MessageLookupByLibrary.simpleMessage(
      "Term of Condition",
    ),
    "termService": MessageLookupByLibrary.simpleMessage("Term of Service"),
    "threeFreeTrial": MessageLookupByLibrary.simpleMessage("3 Days free trial"),
    "time": MessageLookupByLibrary.simpleMessage("Time"),
    "trackYourHealth": MessageLookupByLibrary.simpleMessage(
      "Track your health",
    ),
    "type": MessageLookupByLibrary.simpleMessage("Type"),
    "underweight": MessageLookupByLibrary.simpleMessage("Underweight"),
    "unknownError": MessageLookupByLibrary.simpleMessage("Unknown error"),
    "updateAlarmFailed": MessageLookupByLibrary.simpleMessage(
      "Failed to update alarm",
    ),
    "updateAlarmSuccess": MessageLookupByLibrary.simpleMessage(
      "Alarm successfully updated",
    ),
    "userName": MessageLookupByLibrary.simpleMessage("User name"),
    "version": MessageLookupByLibrary.simpleMessage("Version"),
    "verySeverelyUnderweight": MessageLookupByLibrary.simpleMessage(
      "Very severely underweight",
    ),
    "vi": MessageLookupByLibrary.simpleMessage("Vietnamese"),
    "vietnamese": MessageLookupByLibrary.simpleMessage("Vietnamese"),
    "walking": MessageLookupByLibrary.simpleMessage("Walking"),
    "watchingAds": MessageLookupByLibrary.simpleMessage(
      "Measure now by watching ad",
    ),
    "weight": MessageLookupByLibrary.simpleMessage("Weight"),
    "weightAndBMI": MessageLookupByLibrary.simpleMessage("Weight & BMI"),
    "weightAndBMINoti0": MessageLookupByLibrary.simpleMessage(
      "Log your weight now to check your BMI!",
    ),
    "weightAndBMINoti1": MessageLookupByLibrary.simpleMessage(
      "See your diet result with our app BMI!",
    ),
    "weightAndBMINoti2": MessageLookupByLibrary.simpleMessage(
      "It\'s time to weight yourself and see BMI",
    ),
    "weightAndBMINoti3": MessageLookupByLibrary.simpleMessage(
      "Check your work out result with BMI function!",
    ),
    "weightAndBMINoti4": MessageLookupByLibrary.simpleMessage(
      "Use BMI auto calculator to track your weight",
    ),
    "weightAndBMINoti5": MessageLookupByLibrary.simpleMessage(
      "See your Body mass index now and record your weight with our app",
    ),
    "weightAndBMINoti6": MessageLookupByLibrary.simpleMessage(
      "Stay healthy by knowning your body mass index!",
    ),
    "weightAndBMINoti7": MessageLookupByLibrary.simpleMessage(
      "Check your Body mass index to adjust your diet and lifestyle!",
    ),
    "weightAndBMINoti8": MessageLookupByLibrary.simpleMessage(
      "Positive Body mass figures are different with each age range. See your BMI insight now!",
    ),
    "weightAndBMINoti9": MessageLookupByLibrary.simpleMessage(
      "It\'s time to check your work out progress by checking your BMI now!",
    ),
    "whatGender": MessageLookupByLibrary.simpleMessage(
      "What is your biological gender?",
    ),
    "withAds": MessageLookupByLibrary.simpleMessage("With Ads"),
    "year": MessageLookupByLibrary.simpleMessage("Year"),
    "youDoNotHaveAccount": MessageLookupByLibrary.simpleMessage(
      "You don\'t have account?",
    ),
    "youHaveAccount": MessageLookupByLibrary.simpleMessage("You had account?"),
  };
}
