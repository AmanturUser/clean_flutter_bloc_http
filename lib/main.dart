import 'package:flutter/material.dart';
import 'package:flutter_bloc_get_clean/core/servise_locator/servise_locator.dart';
import 'my_app_material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(const MyApp());
}

