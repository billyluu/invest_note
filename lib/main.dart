import 'package:flutter/material.dart';
import 'package:invest_note/app.dart';
import 'package:invest_note/core/di/get_it.dart';
import 'package:invest_note/core/service/coingecko_service.dart';

void main() {
  setupGetIt();
  runApp(const MyApp());
}
