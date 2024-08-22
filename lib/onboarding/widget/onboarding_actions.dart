import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:now_tv_v1/shared/widgets/now_tv_elevated_button.dart';
import 'package:now_tv_v1/theme/theme_helper.dart';

class OnboardingActions extends StatelessWidget {
  final int pageIndex;
  final PageController controller; // Add controller here

  const OnboardingActions({
    required this.pageIndex,
    required this.controller, // Add controller here
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: pageIndex == 2
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: NowTvElevatedButton(
              text: pageIndex == 2 ? 'Let’s Get Started' : 'Next',
              onPressed: () {
                if (pageIndex == 2) {
                  // Add your navigation or action for "Get Started" here
                } else {
                  controller.animateToPage(
                    pageIndex + 1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.decelerate,
                  );
                }
              },
            ),
          ),
          14.height,
          if (pageIndex != 2)
            GestureDetector(
                onTap: () {
                  if (pageIndex > 0) {
                    controller.animateToPage(
                      pageIndex - 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.decelerate,
                    );
                  }
                },
                child: Text(pageIndex == 0 ? ' Skip' : 'Back',
                    style: theme.textTheme.titleMedium?.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff01dc9d)))),
        ],
      ),
    );
  }
}
