import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../utils/import/app_import.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({
    Key? key,
    required this.isUpdatePost,
    this.post,
  }) : super(key: key);
  final bool isUpdatePost;
  final Post? post;

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  @override
  void initState() {
    super.initState();
    if (widget.isUpdatePost) {
      _titleController.text = widget.post!.title;
      _bodyController.text = widget.post!.body;
    }
  }

  void validateFormThenUpdateOrAddPost() {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      final post = Post(
          iD: widget.isUpdatePost ? widget.post!.iD : null,
          title: _titleController.text,
          body: _bodyController.text);

      if (widget.isUpdatePost) {
        BlocProvider.of<AddDeleteUpdatePostBloc>(context)
            .add(UpdatePostEvent(post: post));
      } else {
        BlocProvider.of<AddDeleteUpdatePostBloc>(context)
            .add(AddPostEvent(post: post));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //* Title
            CustomTextFormField(
                controller: _titleController,
                validatorText: "Title Can't be empty",
                hintText: "Title"),
            //* Body
            CustomTextFormField(
              controller: _bodyController,
              validatorText: "Body Can't be empty",
              hintText: "Body",
              minLines: 6,
              maxLines: 6,
            ),
            ElevatedButton.icon(
                onPressed: validateFormThenUpdateOrAddPost,
                icon: widget.isUpdatePost
                    ? const Icon(Icons.edit)
                    : const Icon(Icons.add),
                label: Text(widget.isUpdatePost ? "Update" : "Add"))
          ]),
    );
  }
}
