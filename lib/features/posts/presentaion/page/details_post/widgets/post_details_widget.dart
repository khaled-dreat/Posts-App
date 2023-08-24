part of '../../../../../../utils/import/app_import.dart';

class PostDetailsWidget extends StatelessWidget {
  const PostDetailsWidget({
    Key? key,
    required this.post,
  }) : super(key: key);
  final Post post;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            // * Title Post
            Text(
              post.title,
              style: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
            ),
            const Divider(
              height: 50,
            ),
            // * Body Post
            Text(
              post.body,
              style: const TextStyle(fontSize: 16),
            ),
            const Divider(
              height: 50,
            ),
            // * Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [EditPostBtn(post: post), DeletePostBtn(post: post)],
            )
          ],
        ));
  }
}
