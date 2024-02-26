import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailViewAppBar extends StatelessWidget {
  const DetailViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const BackButton(),
        Text("playing",style: context.textTheme.labelSmall),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu))
      ],
    );
  }
}