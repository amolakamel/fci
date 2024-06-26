import 'package:fci/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  final bool expanded;
  final double radius;
  final Color? color;
  final double? elevation;
  final double? verticalPadding;
  final double? horizontalPadding;

  const MainButton({
    super.key,
    required this.child,
    this.onPressed,
    this.expanded = true,
    this.radius = 12,
    this.color = ColorManager.primary,
    this.elevation,
    this.verticalPadding = 16,
    this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      width: expanded ? double.infinity : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(

          elevation: elevation,
          // visualDensity: VisualDensity(
          //   vertical:
          //       verticalPadding != null ? VisualDensity.minimumDensity : 0.0,
          //   horizontal:
          //       horizontalPadding != null ? VisualDensity.minimumDensity : 0.0,
          // ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),

          backgroundColor: color??ColorManager.primary,
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding ?? 0,
            horizontal: horizontalPadding ?? 0,
          ),
          child: child,
        ),
      ),
    );
  }
}
