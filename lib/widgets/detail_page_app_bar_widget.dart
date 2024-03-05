import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailViewAppBar extends StatelessWidget {
  const DetailViewAppBar({
    super.key, required this.onAddToPlayList,
  });
  final VoidCallback onAddToPlayList;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const BackButton(),
        Text("playing",style: context.textTheme.labelSmall),
        PopupMenuButton(
          icon:const Icon(Icons.menu) ,
          position: PopupMenuPosition.under,
          itemBuilder: (context) {
          return [
             PopupMenuItem(
                onTap: onAddToPlayList,
                child: const Center(child: Text("افزودن به لیست پخش")))
          ];
        },)
      ],
    );
  }
}