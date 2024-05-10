import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class PlayerController extends GetView<HomeController> {
  const PlayerController({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(Icons.skip_previous, size: 30),
        ),
        Obx(() {
          return InkWell(
            onTap: controller.play,
            child: controller.isPlaying.value
                ? const Icon(
                    Icons.pause_circle_outline_outlined,
                    size: 40,
                  )
                : const Icon(
                    Icons.play_circle_outline_outlined,
                    size: 40,
                  ),
          );
        }),
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Icon(Icons.skip_next, size: 30),
        ),
        const SizedBox(width: 30),
        InkWell(
          onTap: controller.hidePlayer,
          child: const CircleAvatar(child: Icon(Icons.close)),
        ),
      ],
    );
  }
}
