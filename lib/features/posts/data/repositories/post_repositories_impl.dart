part of '../../../../utils/import/app_import.dart';

typedef GetCode = Future<Unit> Function();
typedef EitherType = Future<Either<Failure, Unit>>;

class PostRepositoryImpl implements PostsRepository {
  final PostLocalDataSource localDataSource;
  final PostRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  PostRepositoryImpl(
      {required this.localDataSource,
      required this.remoteDataSource,
      required this.networkInfo});
  @override
  Future<Either<Failure, List<Post>>> getAllPosts() async {
    if (await networkInfo.isConnected) {
      try {
        final remotePost = await remoteDataSource.getAllPosts();
        localDataSource.cashePost(remotePost);
        return Right(remotePost);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localPosts = await localDataSource.getCachedPosts();
        return Right(localPosts);
      } on EmpttyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  EitherType addPost(Post post) async {
    final PostModel postModel =
        PostModel(id: post.id, title: post.title, body: post.body);
    return await _getMessage(
      () {
        return remoteDataSource.addPost(postModel);
      },
    );
  }

  @override
  EitherType deleteePost(int postId) async {
    return await _getMessage(
      () {
        return remoteDataSource.deletePost(postId);
      },
    );
  }

  @override
  EitherType updatePost(Post post) async {
    final PostModel postModel =
        PostModel(id: post.id, title: post.title, body: post.body);
    return await _getMessage(
      () {
        return remoteDataSource.updatePost(postModel);
      },
    );
  }

  EitherType _getMessage(GetCode getCode) async {
    if (await networkInfo.isConnected) {
      try {
        await getCode();

        return const Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
