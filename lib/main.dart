import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:marvel_app/core/di/dependency_injection.dart';
import 'package:marvel_app/features/home/data/models/cache_model.dart';
import 'package:marvel_app/marvel_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Hive.initFlutter();

  //* create Hive box
  Hive.registerAdapter(CachedResultAdapter());
  Hive.registerAdapter(CachedThumbnailAdapter());
  Hive.registerAdapter(CachedComicsAdapter());

  await Hive.openBox<CachedResult>('chacheMarvel');

  setupGetIt();

  runApp(const MarvelApp());
}
