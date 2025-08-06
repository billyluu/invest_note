import 'package:flutter/material.dart';
import 'package:invest_note/app.dart';
import 'package:invest_note/core/di/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(const MyApp());
}
