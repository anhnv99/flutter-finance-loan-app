import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:initializer/initializer.dart';
import 'package:shared/shared.dart';

import '../base.dart';
import '../di/di.dart' as di;

class BaseConfig extends ApplicationConfig {
  factory BaseConfig.getInstance() {
    return _instance;
  }

  BaseConfig._();

  static final BaseConfig _instance = BaseConfig._();

  @override
  Future<void> config() async {
    di.configureInjection();
    Bloc.observer = AppBlocObserver();
    await ViewUtils.setPreferredOrientations(DeviceUtils.deviceType == DeviceType.mobile
        ? UiConstants.mobileOrientation
        : UiConstants.tabletOrientation);
    ViewUtils.setSystemUIOverlayStyle(UiConstants.systemUiOverlay);
    await LocalPushNotificationHelper.init();
  }
}
