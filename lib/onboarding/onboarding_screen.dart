import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:now_tv_v1/onboarding/cubit/onboarding_cubit.dart';
import 'package:now_tv_v1/onboarding/widget/onboarding_widget.dart';
import 'package:now_tv_v1/shared/core/now_tv_image_constant.dart';
import 'package:now_tv_v1/theme/theme_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          return Stack(
            alignment: Alignment.center,
            children: [
              PageView(
                controller: controller,
                onPageChanged: (value) =>
                    context.read<OnboardingCubit>().updatePage(value),
                children: [
                  OnboardingWidget(
                    imageUrl: NowTvImageConstant.onboarding_1,
                    title: 'Easy Streaming',
                    desc:
                    ' Choose your plan to watch live match\nyour favourite club.',
                    pageIndex: 0,
                    controller: controller, // Pass the controller here
                  ),
                  OnboardingWidget(
                    imageUrl: NowTvImageConstant.onboarding_2,
                    title: 'Always Uptodate',
                    desc:
                    'Stay updated with match highlight,\npreview and hot news.',
                    pageIndex: 1,
                    controller: controller, // Pass the controller here
                  ),
                  OnboardingWidget(
                    imageUrl: NowTvImageConstant.onboarding_3,
                    title: 'Get Amazing Reward',
                    desc: 'Redeem your points to get an\namazing reward.',
                    pageIndex: 2,
                    controller: controller, // Pass the controller here
                  ),
                ],
              ),
              Positioned(
                bottom: 150,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotColor: Color(0xff01dc9d),
                    activeDotColor: Color(0xff01dc9d),
                    dotHeight: 9.0,
                    dotWidth: 9.0,
                    expansionFactor: 2,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
