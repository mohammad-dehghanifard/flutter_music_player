import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayListItem extends StatelessWidget {
  const PlayListItem({
    super.key,
    required this.playlist,
  });

  final PlaylistModel playlist;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
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
                Text("${playlist.numOfSongs} عدد موزیک",style: context.textTheme.labelSmall)


              ],
            )
          ],
        ),
      ),
    );
  }
}
