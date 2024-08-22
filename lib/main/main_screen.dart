import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:now_tv_v1/onboarding/onboarding_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  PageController? controller;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    controller = PageController(initialPage: currentPage);
    setStatusBarColor(
      Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        reverse: true,
        pageSnapping: true,
        onPageChanged: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        children: <Widget>[
          OnboardingScreen(),
        ],
      ),
    );
  }
}
