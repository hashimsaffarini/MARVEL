import 'package:flutter/material.dart';
import 'package:marvel_app/core/di/dependency_injection.dart';
import 'package:marvel_app/marvel_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(const MarvelApp());
}
