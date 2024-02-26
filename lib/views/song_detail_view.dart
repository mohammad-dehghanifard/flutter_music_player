import 'package:flutter/material.dart';
import 'package:flutter_music_player/controllers/detail_controller.dart';
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
          child: GetBuilder<AudioDetailController>(
              init: AudioDetailController(Uri.parse(song.uri!)),
              builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //app bar
                    const DetailViewAppBar(),
                    SizedBox(height: size.height * 0.08),
                    // image
                    QueryArtworkWidget(
                        id: song.id,
                        keepOldArtwork: true,
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
                          inactiveTrackColor:
                              context.theme.colorScheme.tertiary,
                          trackHeight: 2,
                          overlayColor: context.theme.colorScheme.onPrimary
                              .withOpacity(0.10),
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 5),
                        ),
                        child: Slider(
                            value: controller.getSliderValue(),
                            onChanged: (value) {
                              controller.audioPlayer.seek(Duration(
                                  seconds: (value *
                                          (controller.duration?.inSeconds ?? 0))
                                      .round()));
                            })),
                    // times
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.07),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(controller.getDuration(),
                              style: context.textTheme.bodySmall),
                          Text(controller.getCurrentDuration(),
                              style: context.textTheme.bodySmall),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    // icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.fast_rewind_rounded,
                                size: 48)),
                        IconButton(
                            onPressed: () => controller.playAndStopAudio(),
                            icon: Icon(
                                controller.audioPlayer.playing
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                size: 48)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.fast_forward, size: 48))
                      ],
                    ),
                  ],
                );
              })),
    );
  }
}
