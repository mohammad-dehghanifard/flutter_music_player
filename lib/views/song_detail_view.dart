import 'package:flutter/material.dart';
import 'package:flutter_music_player/widgets/detail_page_app_bar_widget.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongDetailView extends StatelessWidget {
  const SongDetailView({super.key, required this.song});

  final SongModel song;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //app bar
          const DetailViewAppBar(),
          SizedBox(height: size.height * 0.08),
          // image
          QueryArtworkWidget(
              id: song.id,
              type: ArtworkType.AUDIO,
              artworkBorder: BorderRadius.circular(12),
              artworkHeight: size.height / 4,
              artworkWidth: size.height / 4),
          SizedBox(height: size.height * 0.02),
          // title
          Text(song.title,
              maxLines: 1,
              style: context.textTheme.titleSmall,
              overflow: TextOverflow.ellipsis),
          // artist name
          Text(
            song.artist ?? "نامی جهت نمایش یافت نشد...",
            style: context.textTheme.labelSmall!
                .apply(color: context.theme.colorScheme.primary),
          ),
          SizedBox(height: size.height * 0.02),
          // slider
          SliderTheme(
              data: SliderThemeData(
                activeTrackColor: context.theme.colorScheme.primary,
                thumbColor: context.theme.colorScheme.onPrimary,
                disabledActiveTrackColor: Colors.blueGrey,
                inactiveTrackColor: context.theme.colorScheme.tertiary,
                trackHeight: 2,
                overlayColor:
                    context.theme.colorScheme.onPrimary.withOpacity(0.10),
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 5),
              ),
              child: Slider(value: 0.4, onChanged: (value) {})),
          // times
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("12:40", style: context.textTheme.bodySmall),
                Text("12:40", style: context.textTheme.bodySmall),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          // icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.fast_rewind_rounded,size: 48)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.play_arrow,size: 48)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.fast_forward,size: 48))
            ],
          ),

        ],
      )),
    );
  }
}
