part of '../../../../utils/import/app_import.dart';

class Post extends Equatable {
  final int? iD;
  final String title;
  final String body;
  const Post({
    this.iD,
    required this.title,
    required this.body,
  });

  @override
  List<Object?> get props => [iD, title, body];
}
