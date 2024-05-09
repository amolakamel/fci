import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
class MainTextField extends StatefulWidget {
  final String hint;
  final FontWeight? fontWeight;
  final Color? colorText;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final int maxLines;
  final String? init;
  final bool isDense;
  final EdgeInsets? contentPadding;
  final TextStyle? style;
  final int? maxInputLength;
  final bool hideKeyboard;
  final OutlineInputBorder? border;
  final Color? filledColor;
  final Color? borderColor;
  final bool enable;
  final void Function(String value)? onSubmit;
  final bool unfocusWhenTapOutside;
  final void Function()? onTap;
  final void Function(String value)? onChanged;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final bool obscureText; // Add the obscureText property.

  const MainTextField({
    Key? key,
    this.hint = '',
    this.fontWeight,
    this.colorText,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.init,
    this.maxInputLength,
    this.border,
    this.isDense = true,
    this.contentPadding,
    this.filledColor = ColorManager.lightGray,
    this.suffix,
    this.onSubmit,
    this.enable = true,
    this.style,
    this.hideKeyboard = false,
    this.borderColor,
    this.suffixIcon,
    this.unfocusWhenTapOutside = false,
    this.onTap,
    this.onChanged,
    this.controller,
    this.validator,
    this.obscureText = false, // Provide a default value of false.
  });

  @override
  State<MainTextField> createState() => MainTextFieldState();
}

class MainTextFieldState extends State<MainTextField> {
  TextEditingController controller = TextEditingController();

  @override
  void didUpdateWidget(MainTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller &&
        widget.controller != null) {
      controller = widget.controller!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller, // Use the controller from the state.
      cursorHeight: 22.0,
      enabled: widget.enable,
      maxLines: widget.maxLines,
      maxLength: widget.maxInputLength,
      onFieldSubmitted: widget.onSubmit,
      obscureText: widget.obscureText, // Use the obscureText property from the widget.
      keyboardType: widget.keyboardType,
      style: widget.style ??
          const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      onTapOutside: (event) {
        if (widget.unfocusWhenTapOutside) {
          FocusScope.of(context).requestFocus(FocusNode());
        }
      },
      validator: widget.validator,
      decoration: InputDecoration(
        isDense: widget.isDense,
        prefixIcon: widget.prefixIcon,
        suffix: widget.suffix,
        contentPadding: widget.contentPadding,
        hintText: widget.hint.isNotEmpty ? widget.hint : null,
        hintStyle: const TextStyle(color: Colors.black54),
        border: _border(color: widget.borderColor ?? ColorManager.primary),
        disabledBorder:
        _border(color: widget.borderColor ?? ColorManager.error),
        enabledBorder:
        _border(color: widget.borderColor ?? ColorManager.white),
        focusedBorder: _border(color:  ColorManager.primary),
        errorBorder: _border(color:  ColorManager.error),
        fillColor: widget.filledColor ?? ColorManager.lightGray,
        filled: true,
        suffixIcon: widget.suffixIcon,
      ),
    );
  }

  OutlineInputBorder _border({required Color color}) {
    return widget.border == null
        ? OutlineInputBorder(
      // borderRadius: AppSize.6,
      borderSide: BorderSide(color: color),
    )
        : widget.border!.copyWith(borderSide: BorderSide(color: color));
  }
}
