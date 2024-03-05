import 'package:flutter/material.dart';
import 'package:flutter_music_player/controllers/play_list_controller.dart';
import 'package:get/get.dart';

class PlayListView extends StatelessWidget {
  const PlayListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: PlayListController(),
      builder: (controller) {
        return Column(
          children: [

          ],
        );
      }
    );
  }
}
