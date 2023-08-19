part of '../../utils/import/app_import.dart';

abstract class Failure extends Equatable {}

// * No Internet Clint Device
class OfflineFilure extends Failure {
  @override
  List<Object?> get props => [];
}

// * Error in Server
class ServerFilure extends Failure {
  @override
  List<Object?> get props => [];
}

// * No Posts in DB
class EmptyCacheFilure extends Failure {
  @override
  List<Object?> get props => [];
}
