part of '../../../../../utils/import/app_import.dart';

abstract class AddDeleteUpdatePostState extends Equatable {
  const AddDeleteUpdatePostState();

  @override
  List<Object> get props => [];
}

class AddDeleteUpdatePostInitial extends AddDeleteUpdatePostState {}

class LoadingAddDeleteUpdatePost extends AddDeleteUpdatePostState {}

class ErrorAddDeleteUpdatePost extends AddDeleteUpdatePostState {
  final String message;
  const ErrorAddDeleteUpdatePost({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

class MessageAddDeleteUpdatePost extends AddDeleteUpdatePostState {
  final String message;
  const MessageAddDeleteUpdatePost({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
