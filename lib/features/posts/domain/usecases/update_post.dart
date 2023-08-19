part of '../../../../utils/import/app_import.dart';

class UpdatePostUsecase {
  final PostsRepository repository;
  UpdatePostUsecase(
    this.repository,
  );
  Future<Either<Failure, Unit>> call(Post post) async {
    return await repository.updatePost(post);
  }
}
