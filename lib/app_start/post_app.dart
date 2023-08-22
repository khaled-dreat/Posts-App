part of '../utils/import/app_import.dart';

class NameOFProject extends StatelessWidget {
  const NameOFProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => di.sl<PostsBloc>(),
          ),
          BlocProvider(
            create: (context) => di.sl<AddDeleteUpdatePostBloc>(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ));
  }
}

Widget HomePage() {
  return Scaffold();
}
