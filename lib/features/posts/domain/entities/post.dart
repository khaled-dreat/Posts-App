part of '../../../../utils/import/app_import.dart';

class Post extends Equatable {
  final int iD;
  final String title;
  final String body;
  const Post({
    required this.iD,
    required this.title,
    required this.body,
  });

  @override
  List<Object?> get props => [id, title, body];
}
