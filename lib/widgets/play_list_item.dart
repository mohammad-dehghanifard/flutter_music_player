import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_player/controllers/play_list_controller.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayListItem extends StatelessWidget {
  const PlayListItem({
    super.key,
    required this.playlist,
    this.verticalPadding = 12,
    this.onTap
  });

  final PlaylistModel playlist;
  final double verticalPadding;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: verticalPadding),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: context.theme.colorScheme.primaryContainer
                ),
                child: const Icon(CupertinoIcons.music_note_2,color: Colors.white),
              ),
              Column(
                children: [
                  Text(playlist.playlist,style: context.textTheme.bodySmall!.copyWith(fontSize: 16)),
                  const SizedBox(height: 2),
                  Text("${playlist.numOfSongs} عدد موزیک",style: context.textTheme.labelSmall),
                ],
              ),
              const Spacer(),
              IconButton(
                  onPressed: () => Get.find<PlayListController>().removePlayList(playlist.id),
                  icon: const Icon(CupertinoIcons.delete))
            ],
          ),
        ),
      ),
    );
  }
}
