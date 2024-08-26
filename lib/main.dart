import 'package:flutter/material.dart';
import 'package:marvel_app/core/di/dependency_injection.dart';
import 'package:marvel_app/marvel_app.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // Hive.registerAdapter(ResultsAdapter());
  // Hive.registerAdapter(ThumbnailAdapter());
  // Hive.registerAdapter(UrlsAdapter());

  // await Hive.openBox<Results>('resultsBox');
  setupGetIt();
  runApp(const MarvelApp());
}
