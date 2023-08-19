import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

//  ************************ AS & SHOW **************************
//import 'dart:io' show Directory, Platform, SocketException;
//import 'dart:developer' as dev;
//import 'package:http/http.dart' as http;
//import 'dart:convert' as convert;
//import 'package:path_provider/path_provider.dart' as dir;
//import 'package:path/path.dart' as path;
//import 'package:validators/validators.dart' as validators;

// ************************** API ****************************

// ? ************************ App Start **************************
part '../../app_start/post_app.dart';

// ! ************************ Core **************************
part '../../core/error/failures.dart';
part '../../core/error/exceptions.dart';
// ************************ Utils **************************
part '../routes/app_routes.dart';
// ************************ repositories **************************
part '../../features/posts/domain/repositories/posts_repository.dart';

// ! ************************ Use Case **************************
part '../../features/posts/domain/usecases/get_all_posts.dart';
part '../../features/posts/domain/usecases/add_post.dart';
part '../../features/posts/domain/usecases/delete_post.dart';
part '../../features/posts/domain/usecases/update_post.dart';
// ? ************************ Model *********************

// ? ************************ Entities *********************
part '../../features/posts/domain/entities/post.dart';

// ! ************************ View **************************


// ? ************************ Widgets ****************

