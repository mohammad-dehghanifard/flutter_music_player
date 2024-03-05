import 'package:flutter/material.dart';
import 'package:flutter_music_player/controllers/detail_controller.dart';
import 'package:flutter_music_player/controllers/play_list_controller.dart';
import 'package:flutter_music_player/widgets/play_list_item.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SelectPlayListBottomSheet extends StatelessWidget {
  const SelectPlayListBottomSheet({super.key, required this.audioId});
  final int audioId;

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
                final PlaylistModel playList =
                    Get.find<PlayListController>().playLists![index];
                return GetBuilder<AudioDetailController>(
                  builder: (controller) {
                    return GestureDetector(
                      onTap: () => controller.changeSelectedPlayList(playList),
                      child: AnimatedContainer(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          padding: const EdgeInsets.all(8),
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: controller.selectedPlayList?.id == playList.id
                                  ? Border.all(
                                      color: context.theme.colorScheme.primary,
                                      width: 1)
                                  : null),
                          child: PlayListItem(playlist: playList, verticalPadding: 0)),
                    );
                  }
                );
              },
            )),
            ElevatedButton(
                onPressed: () => Get.find<AudioDetailController>().addAudioToPlayList(audioId),
                child: Text(
                  "افزودن به لیست پخش",
                  style:
                      context.textTheme.bodyMedium!.apply(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
