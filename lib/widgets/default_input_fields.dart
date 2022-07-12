// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';

class DefaultInputField extends StatelessWidget {
  const DefaultInputField(
      {required this.labeltext,
      required this.textfieldicon,
      this.obsureText = false});
  final String labeltext;
  final bool obsureText;
  final IconData textfieldicon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(textfieldicon),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          labelText: '$labeltext',
        ),
      ),
    );
  }
}
