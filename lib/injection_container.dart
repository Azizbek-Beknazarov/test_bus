import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:test_bus/features/data/datasource/search_trip_remote_datasource.dart';
import 'package:test_bus/features/data/repository/trip_repository_impl.dart';
import 'package:test_bus/features/domain/repository/trip_repository.dart';
import 'package:test_bus/features/domain/usecase/search_trip_use_case.dart';
import 'package:test_bus/features/presentation/bloc/trip_bloc.dart';

import 'core/network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features
  //bloc
  sl.registerFactory(() => TripBloc(searchTripUseCase: sl()));
  //Use Cases
  sl.registerLazySingleton(() => SearchTripUseCase(sl()));
  // Repository
  sl.registerLazySingleton<TripRepository>(
      () => TripRepositoryImple(remoteDataSource: sl(), info: sl()));
  // Data sources
  sl.registerLazySingleton<SearchTripRemoteDataSource>(
      () => SearchTripRemoteDataSourceImple(dio: sl()));

  //! core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImple(checker: sl()));
  //! External

  // Client
  sl.registerLazySingleton(
    () => Dio()
      ..options = BaseOptions(
        contentType: 'application/json',
        sendTimeout: const Duration(seconds: 3),
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
      )
      ..interceptors.addAll(
        [
          LogInterceptor(
            error: kDebugMode,
            request: kDebugMode,
            requestBody: kDebugMode,
            responseBody: kDebugMode,
          ),
        ],
      ),
  );
  // ConnectionChecker
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
