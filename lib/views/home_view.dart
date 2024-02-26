import 'package:flutter/material.dart';
import 'package:flutter_music_player/controllers/home_controller.dart';
import 'package:flutter_music_player/widgets/song_list_item_widget.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            body: controller.audioList == null
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: controller.audioList!.length,
                    itemBuilder: (context, index) {
                      final SongModel song = controller.audioList![index];
                      return HomeSongItemWidget(song: song);
                    },
                  ),
          );
        }
    );
  }
}

