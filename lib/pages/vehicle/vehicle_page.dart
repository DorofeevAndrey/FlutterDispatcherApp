import 'package:dispatcherapp/config/colors.dart';
import 'package:dispatcherapp/config/dimensions.dart';
import 'package:dispatcherapp/pages/vehicle/vehicle_list.dart';
import 'package:flutter/material.dart';

import '../../config/styles.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kiparo.com Dispatcher', style: primaryTextStyle),
        centerTitle: true,
        backgroundColor: surfaceyColor,
        elevation: 0,
      ),
      body: Container(color: backgroundColor, child: const VehicleList()),
    );
  }
}
