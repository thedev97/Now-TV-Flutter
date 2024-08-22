import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:now_tv_v1/main/main_screen.dart';
export 'package:nb_utils/nb_utils.dart';
import 'package:now_tv_v1/shared/common.dart';
import 'package:animated_text_kit/animated_text_kit.dart' as at_kit;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) {
        finish(context);
        const MainScreen().launch(context);
      }
    });
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: at_kit.AnimatedTextKit(
          animatedTexts: [
            at_kit.ColorizeAnimatedText(
              'Now TV',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            )
          ],
          isRepeatingAnimation: true,
          onTap: () {},
        ),
      )),
    );
  }
}
