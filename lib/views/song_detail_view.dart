
import 'package:flutter/material.dart';
import 'package:flutter_music_player/widgets/detail_page_app_bar_widget.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongDetailView extends StatelessWidget {
  const SongDetailView({super.key, required this.song});
  final SongModel song;
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(child: Column(
        children: [
          //app bar
          DetailViewAppBar()
        ],
      )),
    );
  }

}


