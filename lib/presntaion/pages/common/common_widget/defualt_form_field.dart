import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
 final String hintText ;
 final TextEditingController? controller;
  const DefaultFormField({Key? key, required this.hintText, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10.0),
      child: TextField(
        controller:controller?? TextEditingController(),
        autocorrect: true,
        decoration: InputDecoration(
          hintText:hintText,
        ),
      ),
    );
  }
}
