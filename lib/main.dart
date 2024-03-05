import 'package:flutter/material.dart';
import 'package:flutter_music_player/themes/theme_helper.dart';
import 'package:flutter_music_player/views/home_view.dart';
import 'package:flutter_music_player/views/main_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Music Player',
      themeMode: ThemeMode.system,
      theme: ThemeHelper.light,
      darkTheme: ThemeHelper.dark,
      home: const MainView(),
    );
  }
}


