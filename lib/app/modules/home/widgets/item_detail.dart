import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Story of the day",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "(-05:60)",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
