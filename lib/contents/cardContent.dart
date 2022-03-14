// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';

class CardContent extends StatelessWidget {
  const CardContent({required this.icon, required this.lable});
  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        icon,
        size: kIconSize,
      ),
      SizedBox(
        height: 13.0,
      ),
      Text(
        lable,
        style: kTextStyles,
      ),
    ]);
  }
}
