// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../../../../../../../utils/import/app_import.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title));
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
