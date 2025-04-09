import 'package:flutter/material.dart';

import '../../config/colors.dart';
import '../../config/images.dart';
import '../../config/styles.dart';
import 'driver_list.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select driver', style: primaryTextStyle),
        centerTitle: true,
        backgroundColor: surfaceyColor,
        elevation: 0,
        leading: IconButton(
          icon: arrowBackImage,
          onPressed: () => {Navigator.pop(context)},
        ),
      ),
      body: Container(color: backgroundColor, child: const DriverList()),
    );
  }
}
