part of '../../../../utils/import/app_import.dart';

abstract class PostsRepository {
  Future<Either<Failure, List<Post>>> getAllPosts();
  Future<Either<Failure, Unit>> updatePost(Post post);
  Future<Either<Failure, Unit>> deleteePost(int postId);
  Future<Either<Failure, Unit>> addPost(Post post);
}
