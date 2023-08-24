part of '../../../../../../utils/import/app_import.dart';

class EditPostBtn extends StatelessWidget {
  const EditPostBtn({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () => AppRoutes.goMaterial(
            context,
            AddUpdatePostPage(
              isUpdatePost: true,
              post: post,
            )),
        icon: const Icon(Icons.edit),
        label: const Text("Edit"));
  }
}
