import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
 final String hintText ;
  const DefaultFormField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        autocorrect: true,
        decoration: InputDecoration(
          hintText:hintText?? 'Type Text Here...',
        ),
      ),
    );
  }
}
