part of '../../../../../../utils/import/app_import.dart';

class DeletePostBtn extends StatelessWidget {
  const DeletePostBtn({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () => deleteDialog(context),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
        icon: const Icon(Icons.delete_outline),
        label: const Text("Delete"));
  }

  void deleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return BlocConsumer<AddDeleteUpdatePostBloc, AddDeleteUpdatePostState>(
          builder: (context, state) {
            if (state is LoadingAddDeleteUpdatePostState) {
              return const AlertDialog(
                title: LoadingWidget(),
              );
            }
            return DeleteDialogWidget(
              postId: post.iD!,
            );
          },
          listener: (context, state) {
            if (state is MessageAddDeleteUpdatePostState) {
              AppSnackBar.snackBarSuccess(context, msg: state.message);
              AppRoutes.go(context, PostPage.nameRoute);
            } else if (state is ErrorAddDeleteUpdatePostState) {
              Navigator.pop(context);
              AppSnackBar.snackBarError(context, msg: state.message);
            }
          },
        );
      },
    );
  }
}
