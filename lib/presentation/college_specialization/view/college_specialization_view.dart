import 'package:fci/app/extensions.dart';
import 'package:fci/presentation/college_specialization/widgets/button.dart';
import 'package:fci/presentation/resources/app_router.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/strings_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CollegeSpecializationView extends StatelessWidget {
  const CollegeSpecializationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:ColorManager.backGroundColor(),
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(children: [
          SizedBox(
            height: context.height / 4,
            child: Center(
              child: Text(
                'THIRD YEAR\nG E N E R A L',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(color: ColorManager.lightBlue),
              ),
            ),
          ),
          Column(children: [
            const SizedBox(
              height: AppSize.s12,
            ),
            SizedBox(
              child: CustomText(
                text: AppStrings.cs,

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  text: ' F I R S T\n semester',
                  onTap: () {
                    GoRouter.of(context).pushReplacement(AppRouter.kTermsView);
                  },
                ),
                CustomButton(
                  text: ' S E C O N D\n semester',
                  onTap: () {
                    GoRouter.of(context).pushReplacement(AppRouter.kTermsView);

                  },
                )
              ],
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
            CustomText(
              text: AppStrings.inS,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  text: ' F I R S T\n semester',
                  onTap: () {
                    GoRouter.of(context).pushReplacement(AppRouter.kTermsView);

                  },
                ),
                CustomButton(
                  text: ' S E C O N D\n semester',
                  onTap: () {
                    GoRouter.of(context).pushReplacement(AppRouter.kTermsView);

                  },
                )
              ],
            ),
          ])
        ]),
      ),
    );
  }
}
