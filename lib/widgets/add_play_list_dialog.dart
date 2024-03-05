import 'package:flutter/material.dart';
import 'package:flutter_music_player/controllers/play_list_controller.dart';
import 'package:get/get.dart';

class AddPlayListDialog extends StatelessWidget {
  const AddPlayListDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: SizedBox(
        width: double.infinity,
        height:  MediaQuery.sizeOf(context).height * 0.22,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: GetBuilder<PlayListController>(
            builder: (controller) {
              return Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    Form(
                      key: controller.formKey,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText:  "نام لیست پخش جدید را وارد کنید",
                        ),
                        controller: controller.playListName,
                        validator: controller.validatePlayListName,
                      ),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
                    ElevatedButton(
                        onPressed: () => controller.createPlayList(),
                        child:  Text("ایجاد لیست پخش",style: context.textTheme.bodyMedium,)
                    )
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
