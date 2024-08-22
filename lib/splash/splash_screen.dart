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

  Future<void> init() async {
    SchedulerBinding.instance.addPostFrameCallback((Duration timeStamp) async {
      await Future<void>.delayed(const Duration(seconds: 2));
      if (mounted) {
        finish(context);
        const MainScreen().launch(context);
      }
    });
  }


  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: at_kit.AnimatedTextKit(
            animatedTexts: <at_kit.AnimatedText>[
              at_kit.ColorizeAnimatedText(
                'Now TV',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              )
            ],
            isRepeatingAnimation: true,
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
