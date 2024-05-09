// ignore_for_file: must_be_immutable

import 'package:fci/app/extensions.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({super.key, this.text});
  String? text;
  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.center,
      decoration:  const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSize.s20),
            topRight: Radius.circular(AppSize.s20)),
        //color: ColorManager.lightBlue,
          gradient: LinearGradient(
          colors: [Color(0xFF17A6FF), Color(0xFF0B4E79)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      height:context.height / 10,
      child: Text(text!,
          textAlign: TextAlign.center,
          overflow: TextOverflow.clip,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(color: ColorManager.white)),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.text, this.onTap});
  String? text;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: context.width / 2.2,
        height: context.height / 5,
        alignment: Alignment.center,
        decoration:ColorManager.backGroundColor2(),

        child: Text(text!,
            textAlign: TextAlign.center,
            overflow: TextOverflow.clip,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontSize: AppSize.s25,color:   ColorManager.white)),
      ),
    );
  }
}
