import 'package:flutter/material.dart';
import 'package:flutter_music_player/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold();
      }
    );
  }
}
