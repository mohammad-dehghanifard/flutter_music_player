import 'package:flutter/material.dart';
import 'package:flutter_music_player/controllers/detail_controller.dart';
import 'package:flutter_music_player/controllers/play_list_controller.dart';
import 'package:flutter_music_player/widgets/play_list_item.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SelectPlayListBottomSheet extends StatelessWidget {
   SelectPlayListBottomSheet({super.key});
  final AudioDetailController controller = Get.find<AudioDetailController>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text("یک لیست پخش انتخاب کنید"),
            Expanded(
                child: ListView.builder(
                  itemCount: Get.find<PlayListController>().playLists?.length,
                  itemBuilder: (context, index) {
                  final PlaylistModel playList = Get.find<PlayListController>().playLists![index];
                  return PlayListItem(playlist: playList);
            },)),
            ElevatedButton(
                onPressed: () {},
                child:  Text("افزودن به لیست پخش",style: context.textTheme.bodyMedium!.apply(color: Colors.white),)
            )
          ],
        ),
      ),
    );
  }
}
