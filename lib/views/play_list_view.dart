import 'package:flutter/material.dart';
import 'package:flutter_music_player/controllers/play_list_controller.dart';
import 'package:flutter_music_player/widgets/play_list_item.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayListView extends StatelessWidget {
  const PlayListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlayListController>(
        init: PlayListController(),
        builder: (controller) {
          return controller.playLists == null
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: controller.playLists?.length,
                  padding: const EdgeInsets.all(20),
                  itemBuilder: (context, index) {
                    final PlaylistModel playlist = controller.playLists![index];

                    return PlayListItem(playlist: playlist);
                  },
                );
        });
  }
}

