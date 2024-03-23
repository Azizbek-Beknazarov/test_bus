import 'package:dartz/dartz.dart';
import 'package:test_bus/core/error/failure.dart';
import 'package:test_bus/core/usecase/use_case.dart';
import 'package:test_bus/features/domain/entity/trip_entity.dart';
import 'package:test_bus/features/domain/repository/trip_repository.dart';

class SearchTripUseCase implements UseCase<TripEntity, TripParams> {
  final TripRepository tripRepository;

  SearchTripUseCase(this.tripRepository);

  @override
  Future<Either<Failures, TripEntity>> call(TripParams params) async {
    return await tripRepository.searchTripsCities(
      departureCity: params.departureCity,
      destinationCity: params.destinationCity,
      date: params.date,
    );
  }
}
