import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bus/core/error/failure.dart';
import 'package:test_bus/core/usecase/use_case.dart';
import 'package:test_bus/core/util/constants.dart';
import 'package:test_bus/features/domain/entity/trip_entity.dart';
import 'package:test_bus/features/domain/usecase/search_trip_use_case.dart';

part 'trip_event.dart';

part 'trip_state.dart';

class TripBloc extends Bloc<TripEvent, TripState> {
  final SearchTripUseCase searchTripUseCase;

  TripBloc({required this.searchTripUseCase}) : super(TripInitialState()) {
    on<SearchTripEvent>(_searchTripHandler);
  }

  FutureOr<void> _searchTripHandler(
      SearchTripEvent event, Emitter<TripState> emit) async {
    final errorOrTrip = await searchTripUseCase.call(TripParams(
      departureCity: event.departureCity,
      destinationCity: event.destinationCity,
      date: event.date,
    ));
    errorOrTrip.fold(
      (l) => emit(TripErrorState(errorMessage: _mapFailureToMessage(l))),
      (r) => emit(TripLoadedState(trip: r)),
    );
  }

  String _mapFailureToMessage(Failures failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return Constants.SERVER_ERROR_MESSAGE;
      case InternetFailure:
        return Constants.INTERNET_ERROR_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}
