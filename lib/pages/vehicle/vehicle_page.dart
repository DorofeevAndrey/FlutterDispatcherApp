import 'package:dispatcherapp/config/colors.dart';
import 'package:dispatcherapp/config/dimensions.dart';
import 'package:dispatcherapp/pages/vehicle/vehicle_list.dart';
import 'package:flutter/material.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kiparo.com Dispatcher',
          style: TextStyle(
            color: primaryColor,
            fontSize: fontSize16,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: surfaceyColor,
        elevation: 0,
      ),
      body: Container(color: backgroundColor, child: const VehicleList()),
    );
  }
}
