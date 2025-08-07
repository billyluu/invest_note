import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:invest_note/app.dart';
import 'package:invest_note/core/di/get_it.dart';
import 'package:invest_note/utils/app_key_generator.dart';
import 'package:invest_note/utils/app_shared_preference_helper.dart';
import 'package:uuid/uuid.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(const MyApp());
}

