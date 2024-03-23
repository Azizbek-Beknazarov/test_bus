import 'package:dartz/dartz.dart';
import 'package:test_bus/core/error/failure.dart';
import 'package:test_bus/features/domain/entity/trip_entity.dart';

abstract class TripRepository {
  Future<Either<Failures, TripEntity>> searchTripsCities({
    required String departureCity,
    required String destinationCity,
    required String date,
  });
}
