import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../model/last_week_playlist_information_model.dart';

class LastWeekItem extends GetView<HomeController> {
  const LastWeekItem({super.key, required this.listInfo});

  final ListInfo listInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:
              NetworkImage("${controller.baseUrl}${listInfo.showCoverImage}"),
          repeat: ImageRepeat.repeat,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.2),
            BlendMode.dstATop,
          ),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          CircleAvatar(
            backgroundImage:
                NetworkImage("${controller.baseUrl}${listInfo.showCoverImage}"),
            radius: 50,
            child: Image.network("${controller.baseUrl}${listInfo.showLogo}"),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(listInfo.showTitle!, style: const TextStyle(fontSize: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        listInfo.showDescription!,
                        style: const TextStyle(fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    InkWell(
                        onTap: controller.showPlayer,
                        child:
                            const CircleAvatar(child: Icon(Icons.play_arrow))),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
