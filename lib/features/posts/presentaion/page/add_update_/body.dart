part of '../../../../../utils/import/app_import.dart';

class AddUpdatePostPage extends StatelessWidget {
  static const String nameRoute = "AddUpdatePostPage";

  final Post? post;
  final bool? isUpdatePost;
  const AddUpdatePostPage({
    Key? key,
    this.post,
    this.isUpdatePost,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HomeAppBar(title: isUpdatePost! ? "Edit Post" : "Add Post"),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: BlocConsumer<AddDeleteUpdatePostBloc,
                  AddDeleteUpdatePostState>(
                listener: (context, state) {
                  if (state is MessageAddDeleteUpdatePostState) {
                    AppSnackBar.snackBarSuccess(context, msg: state.message);
                    Navigator.pop(context);
                  } else if (state is ErrorAddDeleteUpdatePostState) {
                    AppSnackBar.snackBarError(context, msg: state.message);
                  }
                },
                builder: (context, state) {
                  if (state is LoadingAddDeleteUpdatePostState) {
                    return const LoadingWidget();
                  }

                  return CustomForm(
                      isUpdatePost: isUpdatePost!,
                      post: isUpdatePost! ? post : null);
                },
              )),
        ));
  }
}
