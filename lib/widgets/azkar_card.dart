import 'package:flutter/material.dart';

class AzkarCard extends StatelessWidget {
  const AzkarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18, bottom: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.1)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.remove),
                Spacer(),
                Text(
                  'سبحان الله',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                children: [
                  Text('33'),
                  Spacer(),
                  Text(
                    'عدد التسبيحات',
                    style: TextStyle(fontSize: 18),
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
