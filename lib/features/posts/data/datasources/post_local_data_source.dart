part of '../../../../utils/import/app_import.dart';

abstract class PostLocalDataSource {
  Future<List<PostModel>> getCachedPosts();
  Future<Unit> cashePost(List<PostModel> postModels);
}

const cachedPosts = "CACHED_POSTS";

class PostLocalDataSourceImpl implements PostLocalDataSource {
  final SharedPreferences sharedPreferences;
  PostLocalDataSourceImpl({
    required this.sharedPreferences,
  });
  @override
  Future<Unit> cashePost(List<PostModel> postModels) {
    List postModelsToJson = postModels
        .map<Map<String, dynamic>>(
          (postModel) => postModel.toJson(),
        )
        .toList();
    sharedPreferences.setString(cachedPosts, jsonEncode(postModelsToJson));
    return Future.value(unit);
  }

  @override
  Future<List<PostModel>> getCachedPosts() {
    final jsonString = sharedPreferences.getString(cachedPosts);
    if (jsonString != null) {
      List decodeJesonData = jsonDecode(jsonString);
      List<PostModel> jsonToPostModel = decodeJesonData
          .map<PostModel>((jesonData) => PostModel.fromJson(jesonData))
          .toList();
      return Future.value(jsonToPostModel);
    } else {
      throw EmpttyCacheException();
    }
  }
}
