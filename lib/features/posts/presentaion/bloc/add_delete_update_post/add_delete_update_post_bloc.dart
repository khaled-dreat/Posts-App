part of '../../../../../utils/import/app_import.dart';

class AddDeleteUpdatePostBloc
    extends Bloc<AddDeleteUpdatePostEvent, AddDeleteUpdatePostState> {
  final AddPostUsecase addPost;
  final DeletePostUsecase deletePost;
  final UpdatePostUsecase updatePost;
  AddDeleteUpdatePostBloc(
      {required this.addPost,
      required this.deletePost,
      required this.updatePost})
      : super(AddDeleteUpdatePostInitial()) {
    on<AddDeleteUpdatePostEvent>((event, emit) async {
      if (event is AddPostEvent) {
        emit(LoadingAddDeleteUpdatePost());
        final failureOrDoneMessage = await addPost(event.post);
        _eitherDoneMessageOrErrorState(
            ADD_SUCCESS_MESSAGE, failureOrDoneMessage);
      } else if (event is UpdatePostEvent) {
        emit(LoadingAddDeleteUpdatePost());
        final failureOrDoneMessage = await updatePost(event.post);
        _eitherDoneMessageOrErrorState(
            UPDATE_SUCCESS_MESSAGE, failureOrDoneMessage);
      } else if (event is DeletePostEvent) {
        emit(LoadingAddDeleteUpdatePost());
        final failureOrDoneMessage = await deletePost(event.postId);
        _eitherDoneMessageOrErrorState(
            DELETE_SUCCESS_MESSAGE, failureOrDoneMessage);
      }
    });
  }

  AddDeleteUpdatePostState _eitherDoneMessageOrErrorState(
      String message, Either<Failure, Unit> either) {
    return either.fold(
        (failure) =>
            ErrorAddDeleteUpdatePost(message: _mapFailureToMessage(failure)),
        (r) => MessageAddDeleteUpdatePost(message: message));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;

      case OfflineFailure:
        return OFFLINE_FAILURE_MESSAGE;
      default:
        return "Unexpected Error , Please try again later .";
    }
  }
}
