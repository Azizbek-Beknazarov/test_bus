import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_bus/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failures, Type>> call(Params params);
}

class TripParams extends Equatable {
  final String departureCity;
  final String destinationCity;
  final String date;

  const TripParams({
    required this.departureCity,
    required this.destinationCity,
    required this.date,
  });

  @override
  List<Object?> get props => [
        departureCity,
        destinationCity,
        date,
      ];
}
