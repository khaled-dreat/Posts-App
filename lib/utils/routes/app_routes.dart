part of '../import/app_import.dart';

class AppRoutes {
  // * Pages  App
  static Map<String, WidgetBuilder> routes = {
    PostPage.nameRoute: (context) => const PostPage(),
    AddUpdatePostPage.nameRoute: (context) => const AddUpdatePostPage(),
    PostDetailsPage.nameRoute: (context) => const PostDetailsPage(),
  };

  // * inti Route
  static String? get initRoute => PostPage.nameRoute;

  // * push Name
  static void go(BuildContext context, String nameRoute) =>
      Navigator.pushNamed(context, nameRoute);
  // * push Name Replace
  static void goReplace(BuildContext context, String nameRoute) =>
      Navigator.pushReplacementNamed(context, nameRoute);

  // * push Name
  static void goMaterial(BuildContext context, Widget page) {
    MaterialPageRoute<Widget> route =
        MaterialPageRoute(builder: (context) => page);
    Navigator.push(context, route);
  }
}
