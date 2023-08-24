part of '../../../../../../utils/import/app_import.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String validatorText;
  final String hintText;
  final int? maxLines;
  final int? minLines;
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.validatorText,
    required this.hintText,
    this.maxLines,
    this.minLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextFormField(
        controller: controller,
        validator: (value) => value!.isEmpty ? validatorText : null,
        decoration: InputDecoration(hintText: hintText),
        maxLines: maxLines,
        minLines: minLines,
      ),
    );
  }
}
