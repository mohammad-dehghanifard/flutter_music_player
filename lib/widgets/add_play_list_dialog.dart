import 'package:flutter/material.dart';

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
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              TextFormField(

              )
            ],
          ),
        ),
      ),
    );
  }
}