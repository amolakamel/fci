
import 'package:dio/dio.dart';
import 'package:fci/app/app_prefs.dart';
import 'package:fci/data/network/app_api.dart';
import 'package:fci/data/network/dio_factory.dart';
import 'package:fci/data/network/network_info.dart';
import 'package:fci/data/repository/repository_impl.dart';
import 'package:fci/domain/repository/repository.dart';
import 'package:fci/domain/usecase/login_usecase.dart';
import 'package:fci/presentation/login/cupit/login%20cupit.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/data_source/remote_data_source.dart';

final instance = GetIt.instance;
Future<void> initAppModule() async {
  // app module, its a module where we put all generic dependencies
  final sharedPrefs = await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  // App prefs instance
  instance
      .registerLazySingleton<AppPreference>(() => AppPreference(instance()));

  // Network info
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(InternetConnectionChecker()));

  // dio factory
  instance.registerLazySingleton<DioFactory>(() =>DioFactory(instance()) );

  Dio dio = await instance<DioFactory>().getDio();
  // app Service Clint
  instance.registerLazySingleton<AppServiceClint>(() => AppServiceClint(dio));

  // remote data source
  instance.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(instance()));

  // repository
  instance.registerLazySingleton<Repository>(
      () => RepositoryImpl(instance(), instance()));
}

initLoginModule() {
  // login module, its a module where we put all generic dependencies

  if (!GetIt.I.isRegistered<LoginUseCase>()) {
    // use case model
    instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance()));
    // Register cubit
    instance.registerFactory<LoginCubit>(() => LoginCubit(instance()));

  }


}


