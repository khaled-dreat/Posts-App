part of '../../../../utils/import/app_import.dart';

class DeletePostUsecase {
  final PostsRepository repository;
  DeletePostUsecase(
    this.repository,
  );
  Future<Either<Failure, Unit>> call(int postId) async {
    return await repository.deleteePost(postId);
  }
}
