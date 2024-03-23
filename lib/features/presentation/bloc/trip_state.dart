part of 'trip_bloc.dart';

@immutable
abstract class TripState extends Equatable {
  const TripState();
}

class TripInitialState extends TripState {
  @override
  List<Object> get props => [];
}

class TripLoadingState extends TripState {
  @override
  List<Object> get props => [];
}

class TripLoadedState extends TripState {
  final TripEntity trip;

  const TripLoadedState({required this.trip});

  @override
  List<Object> get props => [trip];
}

class TripErrorState extends TripState {
  final String errorMessage;

  const TripErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
