import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final ButtonStyle? style;
  final Function() onTap;

  const DefaultButton(
      {Key? key, required this.title, required this.onTap, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style ?? Theme.of(context).elevatedButtonTheme.style,
      onPressed: onTap,
      child: Text(title),
    );
  }
}
