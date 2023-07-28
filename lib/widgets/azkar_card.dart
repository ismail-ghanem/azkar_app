import '../widgets/remove_button_action.dart';
import 'package:flutter/material.dart';

class AzkarCard extends StatelessWidget {
  const AzkarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.1)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    iconSize: 22,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const RemoveButtonAction();
                          });
                    },
                    icon: const Icon(
                      Icons.remove_circle,
                      color: Colors.red,
                    )),

                //Spacer(),
                const Expanded(
                  child: Text(
                    'سبحان الله',
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                children: [
                  Text(
                    '33',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'عدد التسبيحات',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
