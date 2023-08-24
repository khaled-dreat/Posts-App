part of '../../../../utils/import/app_import.dart';

class PostModel extends Post {
  const PostModel({int? iD, required String title, required String body})
      : super(iD: iD, title: title, body: body);

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(iD: json['id'], title: json['title'], body: json['body']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = iD;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
