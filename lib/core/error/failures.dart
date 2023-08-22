part of '../../utils/import/app_import.dart';

abstract class Failure extends Equatable {}

// * No Internet Clint Device
class OfflineFailure extends Failure {
  @override
  List<Object?> get props => [];
}

// * Error in Server
class ServerFailure extends Failure {
  @override
  List<Object?> get props => [];
}

// * No Posts in DB
class EmptyCacheFailure extends Failure {
  @override
  List<Object?> get props => [];
}
