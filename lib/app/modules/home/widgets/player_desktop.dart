import 'package:flutter/cupertino.dart';

import 'item_detail.dart';
import 'player_controller.dart';

class PlayerDesktop extends StatelessWidget {
  const PlayerDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Image.asset("assets/demo-one.png", width: 100),
            const SizedBox(width: 10),
            Image.asset("assets/demo-two.jpeg", width: 100),
            const SizedBox(width: 50),
            const ItemDetail(),
          ],
        ),
        const PlayerController(),
      ],
    );
  }
}
