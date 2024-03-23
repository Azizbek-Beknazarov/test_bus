part of 'trip_bloc.dart';

@immutable
abstract class TripEvent extends Equatable {
  const TripEvent();

  @override
  List<Object> get props => [];
}

class SearchTripEvent extends TripEvent {
  final String departureCity;
  final String destinationCity;
  final String date;

  const SearchTripEvent({
    required this.departureCity,
    required this.destinationCity,
    required this.date,
  });

  @override
  List<Object> get props => [departureCity, destinationCity, date];
}
