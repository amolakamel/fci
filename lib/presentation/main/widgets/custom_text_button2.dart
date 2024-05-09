import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomTextButton2 extends StatelessWidget {
  CustomTextButton2({
    super.key,
    this.text,
    this.onTap,
    this.width,
    this.height,
  }
  );
  String? text;
  Function()? onTap;
  double? width;
  double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width!,
        height: height!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s20),
          gradient: LinearGradient(
          colors: [Color(0xFF999999), Color(0xFF333333)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        ),
        child: Text(
          text!,
          textAlign: TextAlign.center,
          overflow: TextOverflow.clip,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
