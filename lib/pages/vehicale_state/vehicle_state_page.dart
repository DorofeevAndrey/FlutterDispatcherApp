import 'package:dispatcherapp/config/colors.dart';
import 'package:dispatcherapp/pages/vehicale_state/vehical_state_list.dart';
import 'package:dispatcherapp/pages/vehicle/vehicle_list.dart';
import 'package:flutter/material.dart';

import '../../config/styles.dart';

class VehicleStatePage extends StatelessWidget {
  const VehicleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update vehicle state', style: primaryTextStyle),
        centerTitle: true,
        backgroundColor: surfaceyColor,
        elevation: 0,
      ),
      body: Container(color: backgroundColor, child: const VehicalStateList()),
    );
  }
}
