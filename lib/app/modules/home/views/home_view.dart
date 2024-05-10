import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/last_week_item.dart';
import '../widgets/player_desktop.dart';
import '../widgets/player_mobile.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/pattern_fill.png"),
                      Image.asset("assets/podcast_mic.png"),
                      Image.asset("assets/pattern_fill.png"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "In Case You Missed Last Week",
                    style: TextStyle(fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Wrap(
                      spacing: 18.0,
                      runSpacing: 14.0,
                      children: controller.lastWeekPlayList[0].data!
                          .map((e) => LastWeekItem(listInfo: e))
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 200),
                ],
              ),
            ),
            Obx(() {
              return Visibility(
                visible: controller.isPlayerShow.value,
                child: Container(
                  color: Colors.black,
                  height: 160,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      const LinearProgressIndicator(value: 0.0),
                      const SizedBox(height: 10),
                      Container(
                        height: 130,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('assets/demo-two.jpeg'),
                            repeat: ImageRepeat.repeat,
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.2),
                              BlendMode.dstATop,
                            ),
                          ),
                        ),
                        child: constraints.maxWidth < 600
                            ? const PlayerMobile()
                            : const PlayerDesktop(),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ],
        );
      }),
    );
  }
}
