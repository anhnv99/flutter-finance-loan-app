// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base/app/bloc/app_bloc.dart' as _i3;
import 'package:base/base.dart' as _i5;
import 'package:base/base/bloc/common/common_bloc.dart' as _i7;
import 'package:base/helper/local_push_notification_helper.dart' as _i8;
import 'package:domain/domain.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AppBloc>(() => _i3.AppBloc(
          gh<_i4.GetInitialAppDataUseCase>(),
          gh<_i4.SaveIsDarkModeUseCase>(),
          gh<_i4.SaveLanguageCodeUseCase>(),
        ));
    gh.factory<_i7.CommonBloc>(
        () => _i7.CommonBloc(gh<_i4.ClearCurrentUserDataUseCase>()));
    gh.lazySingleton<_i8.LocalPushNotificationHelper>(
        () => _i8.LocalPushNotificationHelper());
    return this;
  }
}
