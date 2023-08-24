part of '../../../../../utils/import/app_import.dart';

class PostPage extends StatelessWidget {
  static const String nameRoute = "PostPage";

  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(title: "Posts"),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: BlocBuilder<PostsBloc, PostsState>(
            builder: (context, state) {
              if (state is LoadingPostsState) {
                return const LoadingWidget();
              } else if (state is LoadedPostsState) {
                return RefreshIndicator(
                    onRefresh: () => _onRefresh(context),
                    child: PostListWidget(posts: state.posts));
              } else if (state is ErrorPostsState) {
                return MessageDesplay(message: state.message);
              }
              return const LoadingWidget();
            },
          )),
      floatingActionButton: CustomFloting(
        onPressed: () => AppRoutes.goMaterial(
            context, const AddUpdatePostPage(isUpdatePost: false)),
      ),
    );
  }

  Future<void> _onRefresh(BuildContext context) async {
    BlocProvider.of<PostsBloc>(context).add(RefreshPostsEvent());
  }
}
