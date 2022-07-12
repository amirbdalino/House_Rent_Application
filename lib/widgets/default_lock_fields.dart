// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, must_be_immutable, prefer_typing_uninitialized_variables, duplicate_ignore, unnecessary_new, no_logic_in_create_state, library_private_types_in_public_api

import 'package:flutter/material.dart';

class LockTextField extends StatefulWidget {
  var textlabel;

  LockTextField({this.textlabel});

  // ignore: prefer_typing_uninitialized_variables

  @override
  _LockTextFieldState createState() => new _LockTextFieldState(textlabel);
}

class _LockTextFieldState extends State<LockTextField> {
  _LockTextFieldState(this.textlabel);
  var textlabel;
  bool _isVisible = false;
  final autovalidate = true;

  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

//var textlabel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
      child: TextField(
        obscureText: _isVisible ? false : true,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () => updateStatus(),
            icon: Icon(_isVisible ? Icons.lock_open : Icons.lock),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          labelText: '$textlabel',
        ),
      ),
    );
  }
}
