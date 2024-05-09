import 'package:fci/app/extensions.dart';
import 'package:fci/presentation/main/widgets/custom_text_button.dart';
import'package:fci/presentation/main/widgets/custom_text_button2.dart';
import 'package:fci/presentation/resources/app_router.dart';
import 'package:fci/presentation/resources/assets_manager.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/strings_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration:ColorManager.backGroundColor3(),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                ImageAssets.fci,
              ),
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
             Text(
              AppStrings.fciText,
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
            SizedBox(
              height: context.height * 2 / 4,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextButton2(
                        width: context.width / 2.5,
                        height: context.height / 5.3,
                        text: AppStrings.firstYear,
                        onTap: (){
                          GoRouter.of(context).push(AppRouter.kYearsView, extra:AppStrings.firstYear, );
                        },
                      ),
                      CustomTextButton2(
                        width: context.width / 2.5,
                        height: context.height / 5.3,
                        text:AppStrings.secondYear,
                        onTap: (){
                          GoRouter.of(context).push(AppRouter.kYearsView, extra:AppStrings.secondYear,);
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.s20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextButton2(
                        width: context.width / 2.5,
                        height: context.height / 5.3,
                        text: AppStrings.thirdYear,
                        onTap: (){
                          GoRouter.of(context).push(AppRouter.kYearsView, extra: AppStrings.thirdYear);
                        },
                      ),
                      CustomTextButton2(
                        width: context.width / 2.5,
                        height: context.height / 5.3,
                        text:AppStrings.fourthYear,
                        onTap: (){
                          GoRouter.of(context).push(AppRouter.kYearsView, extra: AppStrings.fourthYear,);

                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.s20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
