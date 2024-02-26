import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class HomeSongItemWidget extends StatelessWidget {
  const HomeSongItemWidget({
    super.key,
    required this.song,
  });
  final SongModel song;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      height: size.height * 0.09,
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        children: [
          // song image
          QueryArtworkWidget(id: song.id, type: ArtworkType.AUDIO,artworkBorder: BorderRadius.circular(8)),
          SizedBox(width: size.width * 0.02),
          // song title and artist name
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              SizedBox(
                  width: size.width * 0.6,
                  child: Text(
                      song.title,
                      maxLines: 1,
                      style: context.textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis)),
              // artist name
              Text(song.artist ?? "نامی جهت نمایش یافت نشد...",style: context.textTheme.labelSmall,)
            ],
          ),
          const Spacer(),
          // play btn
          Container(
            width: size.width / 8.5,
            height: size.height / 8.5 ,
            decoration: BoxDecoration(
                color: context.theme.colorScheme.primaryContainer,
                shape: BoxShape.circle
            ),
            child: const Icon(CupertinoIcons.play_arrow_solid,color: Colors.white),
          )
        ],
      ),
    );
  }
}
