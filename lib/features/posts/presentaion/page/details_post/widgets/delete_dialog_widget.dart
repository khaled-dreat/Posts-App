part of '../../../../../../utils/import/app_import.dart';

class DeleteDialogWidget extends StatelessWidget {
  const DeleteDialogWidget({super.key, required this.postId});
  final int postId;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Are you Sure ?"),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context), child: const Text("Np")),
        TextButton(
            onPressed: () {
              BlocProvider.of<AddDeleteUpdatePostBloc>(context)
                  .add(DeletePostEvent(postId: postId));
            },
            child: const Text("Yes"))
      ],
    );
  }
}
