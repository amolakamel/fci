import 'dart:async';

import 'package:fci/app/extensions.dart';
import 'package:fci/presentation/resources/app_router.dart';
import 'package:fci/presentation/resources/assets_manager.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/constants_manager.dart';
import 'package:fci/presentation/resources/strings_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadingAnimation;

  Timer? _timer;
  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() {
    GoRouter.of(context).pushReplacement(AppRouter.kOnBoardingView);
  }
  void initFadingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1.0).animate(animationController);
    animationController.repeat(reverse: true);
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds:  AppConstants.splashDelay),
      () {
        GoRouter.of(context).push(AppRouter.kOnBoardingView);
      },
    );
  }

  @override
  void initState() {
    initFadingAnimation();
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(AppSize.s20),
        decoration: ColorManager.backGroundColor(),
        child: Center(
            child: Stack(
                alignment: Alignment.center,
                children: [
              Positioned(
                top: 20,
                child: Center(
                  child: Transform.scale(
                      scale: 0.9,
                      child: SvgPicture.asset(
                        ImageAssets.splashLogo,
                      )),
                ),
              ),
              FadeTransition(
                opacity: fadingAnimation,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.yourCollegeText,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      AppStrings.inText,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      AppStrings.yourPocketText,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                )),
              ),
            ])),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    animationController.dispose();
    super.dispose();
  }
}
