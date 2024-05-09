import 'package:fci/app/extensions.dart';
import 'package:fci/presentation/main/widgets/custom_text_button.dart';
import 'package:fci/presentation/resources/app_router.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/strings_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class YearsView extends StatelessWidget {
  final String text;

  const YearsView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:ColorManager.backGroundColor(),

        child: Column(
          children: [
            SizedBox(
              height: context.height / 4,
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: ColorManager.lightBlue),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: AppSize.s8,
                    ),
                    // Next Button
                    CustomTextButton(
                      width: context.width,
                      height: context.height / 7,
                      text: AppStrings.general,
                      onTap: () => GoRouter.of(context)
                          .push(AppRouter.kCollegeSpecializationView,),
                    ),
              
                    CustomTextButton(
                      width: context.width,
                      height: context.height / 7,
                      text: AppStrings.software,
                      onTap: () => GoRouter.of(context)
                          .push(AppRouter.kCollegeSpecializationView),
                    ),
                    CustomTextButton(
                      width: context.width,
                      height: context.height / 7,
                      text: AppStrings.bio,
                      onTap: () => GoRouter.of(context)
                          .push (AppRouter.kCollegeSpecializationView),
                    ),
                    const SizedBox(
                      height: AppSize.s20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
