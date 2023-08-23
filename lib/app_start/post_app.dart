part of '../utils/import/app_import.dart';

class NameOFProject extends StatelessWidget {
  const NameOFProject({super.key});

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
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PostPage(),
        ));
  }
}
