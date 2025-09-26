// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i494;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:template_app/app.dart' as _i462;
import 'package:template_app/navigation/app_navigator_impl.dart' as _i209;
import 'package:template_app/navigation/mapper/app_popup_info_mapper.dart'
    as _i546;
import 'package:template_app/navigation/mapper/app_route_info_mapper.dart'
    as _i648;
import 'package:template_app/navigation/middleware/route_guard.dart' as _i199;
import 'package:template_app/navigation/routes/app_router.dart' as _i21;
import 'package:template_app/ui/home/bloc/home_bloc.dart' as _i480;
import 'package:template_app/ui/item_detail/bloc/item_detail_bloc.dart'
    as _i961;
import 'package:template_app/ui/login/bloc/login_bloc.dart' as _i429;
import 'package:template_app/ui/main/bloc/main_bloc.dart' as _i679;
import 'package:template_app/ui/my_page/bloc/my_page_bloc.dart' as _i884;
import 'package:template_app/ui/search/bloc/search_bloc.dart' as _i541;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i961.ItemDetailBloc>(() => _i961.ItemDetailBloc());
    gh.factory<_i541.SearchBloc>(() => _i541.SearchBloc());
    gh.factory<_i679.MainBloc>(() => _i679.MainBloc());
    gh.lazySingleton<_i21.AppRouter>(() => _i21.AppRouter());
    gh.lazySingleton<_i462.BaseRouteInfoMapper>(
        () => _i648.AppRouteInfoMapper());
    gh.lazySingleton<_i462.BasePopupInfoMapper>(
        () => _i546.AppPopupInfoMapper());
    gh.factory<_i429.LoginBloc>(() => _i429.LoginBloc(
          gh<_i494.LoginUseCase>(),
          gh<_i494.FakeLoginUseCase>(),
        ));
    gh.factory<_i884.MyPageBloc>(
        () => _i884.MyPageBloc(gh<_i494.LogoutUseCase>()));
    gh.factory<_i480.HomeBloc>(
        () => _i480.HomeBloc(gh<_i494.GetUsersUseCase>()));
    gh.factory<_i199.RouteGuard>(
        () => _i199.RouteGuard(gh<_i494.IsLoggedInUseCase>()));
    gh.lazySingleton<_i494.AppNavigator>(() => _i209.AppNavigatorImpl(
          gh<_i462.AppRouter>(),
          gh<_i462.BasePopupInfoMapper>(),
          gh<_i462.BaseRouteInfoMapper>(),
        ));
    return this;
  }
}
