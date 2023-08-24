part of '../../../../../../../utils/import/app_import.dart';

class CustomFloting extends StatelessWidget {
  const CustomFloting({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.add),
    );
  }
}
