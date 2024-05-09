import 'package:fci/app/extensions.dart';
import 'package:fci/presentation/main/widgets/custom_text_button.dart';
import 'package:fci/presentation/resources/app_router.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TermsView extends StatelessWidget {
  const TermsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s16),
          decoration: ColorManager.backGroundColor(),
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              child:  Center(
                child: Text(
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  'THIRD YEAR \nIS-SECOND TERM',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: ColorManager.lightBlue),
                ),
              ),
            ),
            SizedBox(
              child: Column(
                  children: [
                CustomTextButton(
                  width: context.width,
                  height: context.height / 7,
                  text: 'Neural network',
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kMaterialView,extra:"Neural network");
                  },
                ),


                const SizedBox(
                  height: AppSize.s14,
                ),
                CustomTextButton(
                  width: context.width,
                  height: context.height / 7,
                  text: 'Network',
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kMaterialView,extra:"Network");
                  },
                ),
                const SizedBox(
                  height: AppSize.s14,
                ),
                CustomTextButton(
                  width: context.width,
                  height: context.height / 7,
                  text: 'Time series',
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kMaterialView,extra:"Time series");
                  },
                ),
                const SizedBox(
                  height: AppSize.s14,
                ),
                CustomTextButton(
                  width: context.width,
                  height: context.height / 7,
                  text: ' E government',
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kMaterialView,extra:" E government");
                  },
                ),
                const SizedBox(
                  height: AppSize.s14,
                ),
                CustomTextButton(
                  width: context.width,
                  height: context.height / 7,
                  text: 'MMDB',
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kMaterialView,extra:"MMDB");
                  },
                ),
                const SizedBox(
                  height: AppSize.s14,
                ),
                CustomTextButton(
                  width: context.width,
                  height: context.height / 7,
                  text: 'Time series',
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kMaterialView,extra:"Time series");
                  },
                ),
              ]
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
