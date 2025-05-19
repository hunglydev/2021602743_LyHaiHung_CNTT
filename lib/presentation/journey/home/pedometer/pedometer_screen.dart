import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/util/show_snack_bar.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../common/util/disable_glow_behavior.dart';
import '../../../theme/app_color.dart';
import '../../../widget/app_container.dart';
import '../../../widget/app_header.dart';
import '../../../widget/app_touchable.dart';

class PedometerScreen extends StatefulWidget {
  const PedometerScreen({super.key});

  @override
  State<PedometerScreen> createState() => _PedometerScreenState();
}

class _PedometerScreenState extends State<PedometerScreen> {
  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;
  String _status = 'stopped';
  int _initialSteps = 0;
  int _currentSteps = 0;
  bool _isWalking = false;
  final double _averageStepLength = 0.762;
  double _caloriesBurned = 0.0;
  bool _isPaused = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  @override
  void dispose() {
    _initialSteps = 0;
    super.dispose();
  }

  void onStepCount(StepCount event) {
    if (_isWalking && !_isPaused) {
      setState(() {
        _currentSteps = event.steps - _initialSteps;
        _caloriesBurned = calculateCalories(_currentSteps);
      });
    }
  }

  double calculateCalories(int steps) {
    double distanceInKm = (steps * _averageStepLength) / 1000.0;
    return distanceInKm * 50;
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    setState(() {
      _status = event.status;

      if (event.status == 'walking') {
        _isWalking = true;
      } else {
        _isWalking = false;
      }
    });
  }

  void onPedestrianStatusError(error) {
    setState(() {
      _status = 'Pedestrian Status not available';
    });
  }

  void onStepCountError(error) {
    if (kDebugMode) {
      print('onStepCountError: $error');
    }
  }

  Future<bool> _checkActivityRecognitionPermission() async {
    final permissionStatus = await Permission.activityRecognition.request();
    if (permissionStatus.isGranted) {
      return true;
    } else if (permissionStatus.isDenied) {
      showSnackBar(context,
          title: AppLocalization.of(context).permissionDenied,
          subtitle: AppLocalization.of(context).permissionDeniedMessage,
          type: SnackBarType.error);
      return false;
    } else if (permissionStatus.isPermanentlyDenied) {
      // Permission permanently denied, open app settings
      await openAppSettings();
      return false;
    } else {
      // Handle other permission states if needed
      return false;
    }
  }

  Future<void> initPlatformState() async {
    bool granted = await _checkActivityRecognitionPermission();
    if (!granted) {
      // tell user, the app will not work
    }

    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream.listen(onPedestrianStatusChanged).onError(onPedestrianStatusError);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen((stepCount) {
      if (_initialSteps == 0) {
        _initialSteps = stepCount.steps;
      }
      onStepCount(stepCount);
    }).onError(onStepCountError);

    if (!mounted) return;
  }

  void _togglePause() {
    setState(() {
      _isPaused = !_isPaused;
    });
  }

  void _resetSteps() {
    setState(() {
      _initialSteps = 0;
      _currentSteps = 0;
      _caloriesBurned = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      backgroundColor: const Color(0xFFF5F5F5),
      child: Column(
        children: <Widget>[
          AppHeader(
            title: AppLocalization.of(context).pedometer,
            leftWidget: AppTouchable.common(
              width: 40.0.sp,
              height: 40.0.sp,
              onPressed: () => Get.back(),
              decoration: const BoxDecoration(boxShadow: null),
              child: const Icon(
                Icons.arrow_back_rounded,
                color: AppColor.black,
              ),
            ),
          ),
          Expanded(
            child: ScrollConfiguration(
              behavior: const DisableGlowBehavior(),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0.sp,
                    vertical: 16.0.sp,
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12.0.sp),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24.0.sp),
                          child: Column(
                            children: [
                              Text(
                                AppLocalization.of(context).stepTaken,
                                style: TextStyle(
                                  fontSize: 24.0.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 8.0.sp),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    _currentSteps.toString(),
                                    style: TextStyle(
                                      fontSize: 64.0.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 4.0.sp),
                                  Text(
                                    AppLocalization.of(context).steps,
                                    style: TextStyle(
                                      fontSize: 20.0.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.0.sp),
                              Text(
                                AppLocalization.of(context).caloriesBurned,
                                style: TextStyle(
                                  fontSize: 24.0.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 8.0.sp),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    _caloriesBurned.toStringAsFixed(2),
                                    style: TextStyle(
                                      fontSize: 64.0.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 4.0.sp),
                                  Text(
                                    'kcal',
                                    style: TextStyle(
                                      fontSize: 20.0.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 24.0.sp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AppTouchable(
                            onPressed: _togglePause,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0.sp),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 12.0.sp,
                              horizontal: 16.0.sp,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  _isPaused ? Icons.play_arrow : Icons.pause,
                                  color: Colors.black,
                                  size: 16.0.sp,
                                ),
                                SizedBox(width: 4.0.sp),
                                Text(
                                  _isPaused ? AppLocalization.of(context).resume : AppLocalization.of(context).pause,
                                  style: context.textTheme.bodyLarge?.copyWith(
                                    color: Colors.black,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AppTouchable(
                            onPressed: _resetSteps,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0.sp),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 12.0.sp,
                              horizontal: 16.0.sp,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.refresh,
                                  color: Colors.black,
                                  size: 16.0.sp,
                                ),
                                SizedBox(width: 4.0.sp),
                                Text(
                                  AppLocalization.of(context).reset,
                                  style: context.textTheme.bodyLarge?.copyWith(
                                    color: Colors.black,
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0.sp),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12.0.sp),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24.0.sp),
                          child: Column(
                            children: [
                              Text(
                                AppLocalization.of(context).pedestrianStatus,
                                style: TextStyle(
                                  fontSize: 24.0.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 16.0.sp),
                              Icon(
                                _status == 'walking'
                                    ? Icons.directions_walk
                                    : _status == 'stopped'
                                        ? Icons.accessibility_new
                                        : Icons.error,
                                size: 60.0.sp,
                                color: _status == 'walking'
                                    ? AppColor.green
                                    : _status == 'stopped'
                                        ? AppColor.black
                                        : AppColor.red,
                              ),
                              SizedBox(height: 8.0.sp),
                              Text(
                                _status == 'walking'
                                    ? AppLocalization.of(context).walking
                                    : _status == 'stopped'
                                        ? AppLocalization.of(context).stopped
                                        : "",
                                style: TextStyle(
                                  fontSize: 20.0.sp,
                                  color: _status == 'walking'
                                      ? AppColor.green
                                      : _status == 'stopped'
                                          ? AppColor.black
                                          : AppColor.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
