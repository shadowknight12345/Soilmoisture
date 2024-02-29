import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnorderedListRow extends StatelessWidget {
  const UnorderedListRow({super.key, this.description});

  final String? description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Icon(
                Icons.circle,
                size: 10,
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: Get.width - 54,
              child:
                  Text(description ?? "", style: const TextStyle(fontSize: 13)),
            ),
          ],
        ),
      ],
    );
  }
}
