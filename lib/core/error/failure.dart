import 'package:equatable/equatable.dart';

abstract class Failures extends Equatable {
  @override
  List<Object> get props => [];
}

class ServerFailure extends Failures {
  final String message;

  ServerFailure({required this.message});
}

class InternetFailure extends Failures {
  final String message;

  InternetFailure({required this.message});
}
