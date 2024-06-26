import 'package:flutter/material.dart';
import 'package:g10_provider/home/controller/home_controller.dart';
import 'package:g10_provider/home/widgets/home_increment_buttons.dart';
import 'package:g10_provider/home/widgets/home_main_text_widget.dart';
import 'package:g10_provider/home/widgets/home_time_buttons.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Center(
        child: Consumer<HomePageController>(
          builder: (context, homePageController, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                HomeMainTextWidget(
                  counter: homePageController.counter,
                  countDown: homePageController.countdown,
                ),
                HomeTimerButtons(
                  onStartPressed: () {
                    if (homePageController.index == 0) {
                      homePageController.startCountdown();
                    }
                  },
                  onStopPressed: () {
                    homePageController.stop();
                  },
                  onReturnPressed: () {
                    homePageController.resetTime();
                  },
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: HomeIncrementButtons(
        onIncrementPressed: provider.incrementCounter,
        onDecrementPressed: provider.decrementCounter,
      ),
    );
  }
}
