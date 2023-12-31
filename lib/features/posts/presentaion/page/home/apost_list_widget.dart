part of '../../../../../utils/import/app_import.dart';

class PostListWidget extends StatelessWidget {
  final List<Post> posts;
  const PostListWidget({
    Key? key,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: posts.length,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          thickness: 1,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(posts[index].title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          subtitle:
              Text(posts[index].body, style: const TextStyle(fontSize: 16)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          onTap: () => AppRoutes.goMaterial(
              context,
              PostDetailsPage(
                post: posts[index],
              )),
        );
      },
    );
  }
}
