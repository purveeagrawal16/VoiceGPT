import 'package:flutter/material.dart';
import 'package:voice_assistant/pallete.dart';

class FeatureBox extends StatelessWidget {

  final Color color;
  final String headerText;
  final String descriptionText;

  const FeatureBox({
    super.key,
    required this.color,
    required this.headerText,
    required this.descriptionText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(15),),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20).copyWith(
          left: 15,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                headerText,
                style: const TextStyle(
                  fontFamily: 'Cera Pro',
                  fontSize: 18,
                  color: Pallete.blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 3),
            Text(
              descriptionText,
              style: const TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.blackColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}