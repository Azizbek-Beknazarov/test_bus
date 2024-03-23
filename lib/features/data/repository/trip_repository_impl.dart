import 'package:dartz/dartz.dart';
import 'package:test_bus/core/error/exception.dart';
import 'package:test_bus/core/error/failure.dart';
import 'package:test_bus/core/network/network_info.dart';
import 'package:test_bus/core/util/constants.dart';
import 'package:test_bus/features/data/datasource/search_trip_remote_datasource.dart';
import 'package:test_bus/features/domain/entity/trip_entity.dart';

import '../../domain/repository/trip_repository.dart';

class TripRepositoryImple implements TripRepository {
  SearchTripRemoteDataSource remoteDataSource;
  NetworkInfo info;

  TripRepositoryImple({
    required this.remoteDataSource,
    required this.info,
  });

  @override
  Future<Either<Failures, TripEntity>> searchTripsCities({
    required String departureCity,
    required String destinationCity,
    required String date,
  }) async {
    if (await info.isConnection) {
      try {
        final trip = await remoteDataSource.searchTripsCities(
            departureCity: departureCity,
            destinationCity: destinationCity,
            date: date);
        return Right(trip.toEntity());
      } on ServerException {
        return Left(ServerFailure(message: Constants.SERVER_ERROR_MESSAGE));
      }
    } else {
      return Left(InternetFailure(message: Constants.INTERNET_ERROR_MESSAGE));
    }
  }
}
