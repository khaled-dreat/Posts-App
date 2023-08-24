part of '../utils/import/app_import.dart';

class PostApp extends StatelessWidget {
  const PostApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => di.sl<PostsBloc>()..add(GetAllPostsEvent()),
          ),
          BlocProvider(
            create: (_) => di.sl<AddDeleteUpdatePostBloc>(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: AppRoutes.routes,
          initialRoute: AppRoutes.initRoute,
        ));
  }
}
