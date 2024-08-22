import 'package:flutter/material.dart';
import 'package:now_tv_v1/onboarding/widget/onboarding_actions.dart';
import 'package:now_tv_v1/shared/core/blur_background.dart';

class OnboardingWidget extends StatelessWidget { // Add controller here

  const OnboardingWidget({
    required this.imageUrl,
    required this.title,
    required this.desc,
    required this.pageIndex,
    required this.controller, // Add controller here
    super.key,
  });
  final String imageUrl;
  final String title;
  final String desc;
  final int pageIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const BlurredBackground(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: const Color(0xff01dc9d),
                      shadows: <Shadow>[
                        Shadow(
                          offset: const Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    )),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(desc,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: const Color(0xff01dc9d),
                      )),
                ),
                const SizedBox(height: 100),
                OnboardingActions(
                  pageIndex: pageIndex,
                  controller: controller, // Pass the controller here
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
