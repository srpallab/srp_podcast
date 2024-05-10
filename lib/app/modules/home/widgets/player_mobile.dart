import 'package:flutter/material.dart';

import 'item_detail.dart';
import 'player_controller.dart';

class PlayerMobile extends StatelessWidget {
  const PlayerMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ItemDetail(),
        PlayerController(),
      ],
    );
  }
}
