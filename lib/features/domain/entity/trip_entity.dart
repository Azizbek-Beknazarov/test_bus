import 'package:equatable/equatable.dart';

class TripEntity extends Equatable {
  final List<TripsEntity>? trips;

  const TripEntity({required this.trips});

  @override
  List<Object?> get props => [trips];
}

class TripsEntity {
  TripsEntity({
    required this.carrier,
    required this.bus,
    required this.driver1,
    required this.departure,
    required this.departureTime,
    required this.destination,
    required this.arrivalTime,
  });

  final String? driver1;
  final String? carrier;
  final BusEntity? bus;

  final DepartureEntity? departure;
  final String? departureTime;
  final DestinationEntity? destination;
  final String? arrivalTime;
}

class BusEntity {
  BusEntity({
    required this.model,
    required this.licencePlate,
  });

  final String? model;
  final String? licencePlate;
}

class DestinationEntity {
  DestinationEntity({required this.name});

  final String? name;
}

class DepartureEntity {
  DepartureEntity({required this.name});

  final String? name;
}
