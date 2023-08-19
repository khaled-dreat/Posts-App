part of '../../../../utils/import/app_import.dart';

class GetAllPostsUsecase {
  final PostsRepository repository;

  GetAllPostsUsecase(this.repository);
  Future<Either<Failure, List<Post>>> call() async {
    return await repository.getAllPosts();
  }
}
