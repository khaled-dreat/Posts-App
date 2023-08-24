part of '../../../../../utils/import/app_import.dart';

class PostDetailsPage extends StatelessWidget {
  static const String nameRoute = "PostDetailsPage";
  const PostDetailsPage({
    Key? key,
    this.post,
  }) : super(key: key);
  final Post? post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(title: "Post Details"),
      body: Center(
        child: Padding(
            // todo : Refactor Body
            padding: const EdgeInsets.all(10),
            child: PostDetailsWidget(post: post!)),
      ),
    );
  }
}
