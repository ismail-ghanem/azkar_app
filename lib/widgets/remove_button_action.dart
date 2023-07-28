import 'package:flutter/material.dart';

class RemoveButtonAction extends StatelessWidget {
  const RemoveButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'هل أنت متأكد من حذف الذكر؟',
        textAlign: TextAlign.right,
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "لا",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            )),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "نعم",
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
      ],
    );
  }
}
