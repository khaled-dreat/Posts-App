import 'package:flutter/material.dart';

import 'injection_contaner.dart';
import 'utils/import/app_import.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const NameOFProject());
}
