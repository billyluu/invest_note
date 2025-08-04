import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invest_note/navigation/bloc/nav_cubit.dart';
import 'package:invest_note/navigation/home_bottom_navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavCubit(),
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomeBottomNavigation(),
      ),
    );
  }
}