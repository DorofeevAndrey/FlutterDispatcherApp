import 'package:dispatcherapp/config/styles.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../images.dart';

class SelectAppBar extends AppBar {
  SelectAppBar({
    super.key,
    required String title,
    required VoidCallback onPressed,
  }) : super(
         title: Text(title, style: primaryTextStyle),
         centerTitle: true,
         backgroundColor: surfaceyColor,
         elevation: 0,
         leading: IconButton(
           icon: arrowBackImage,
           onPressed: onPressed,
           tooltip: 'Назад',
         ),
       );
}
