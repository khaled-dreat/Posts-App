part of '../../../../utils/import/app_import.dart';

class AddPostUsecase {
  final PostsRepository repository;
  AddPostUsecase(
    this.repository,
  );
  Future<Either<Failure, Unit>> call(Post post) async {
    return await repository.addPost(post);
  }
}
