import 'dart:io';

import 'package:dispatcherapp/config/colors.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class AccentButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const AccentButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,

      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.only(left: 16, right: 16),
        minimumSize: Size(200, 40),
        maximumSize: Size.fromHeight(40),
        backgroundColor: primaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        title,
        style: accentButtonStyle,
      ),
    );
  }
}
