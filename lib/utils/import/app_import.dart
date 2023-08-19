import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
//  ************************ AS & SHOW **************************
//import 'dart:io' show Directory, Platform, SocketException;
//import 'dart:developer' as dev;
import 'package:http/http.dart' as http;
//import 'dart:convert' as convert;
//import 'package:path_provider/path_provider.dart' as dir;
//import 'package:path/path.dart' as path;
//import 'package:validators/validators.dart' as validators;

// ************************** Core ****************************
part '../../core/network/network_info.dart';
// ? ************************ App Start **************************
part '../../app_start/post_app.dart';

// ! ************************ Core **************************
part '../../core/error/failures.dart';
part '../../core/error/exceptions.dart';
// ************************ Utils **************************
part '../routes/app_routes.dart';
// ************************ repositories **************************
part '../../features/posts/domain/repositories/posts_repository.dart';
part '../../features/posts/data/repositories/post_repositories_impl.dart';

// ************************ Data Sources **************************
part '../../features/posts/data/datasources/post_remote_data_source.dart';
part '../../features/posts/data/datasources/post_local_data_source.dart';
// ! ************************ Use Case **************************
part '../../features/posts/domain/usecases/get_all_posts.dart';
part '../../features/posts/domain/usecases/add_post.dart';
part '../../features/posts/domain/usecases/delete_post.dart';
part '../../features/posts/domain/usecases/update_post.dart';

// ? ************************ Model *********************
part '../../features/posts/data/model/m_post.dart';

// ? ************************ Entities *********************
part '../../features/posts/domain/entities/post.dart';

// ! ************************ View **************************


// ? ************************ Widgets ****************

