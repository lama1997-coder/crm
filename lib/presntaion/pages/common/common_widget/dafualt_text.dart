import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  final String title;
  final Color? color;
  final double? size;
  final double? letterSpace;
  final double? wordSpace;
  final String? fontFamily;
  final TextAlign? align;
  final TextDecoration? decoration;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final Function()? onTap;
  final int? maxLines;
  final TextStyle? textStyle;
  final TextDecoration? textDecoration;

  DefaultText(
      {required this.title,
      this.color,
      this.size,
      this.align,
      this.fontFamily,
      this.decoration,
      this.letterSpace,
      this.wordSpace,
      this.overflow,
      this.fontWeight,
      this.onTap,
      this.maxLines,
      this.textStyle,
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Text(
          title == "" ? "" : title,
          textAlign: align ?? TextAlign.start,
          textScaleFactor: 1,
          maxLines: maxLines,
          style: textStyle ?? Theme.of(context).textTheme.displayMedium,
          overflow: overflow,
        ));
  }
}
