import 'package:flutter/material.dart';

import '../../config/colors.dart';
import '../../config/widgets/select_app_bar.dart';
import 'driver_list.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SelectAppBar(
        title: 'Select driver',
        onPressed: () => Navigator.pop(context),
      ),
      body: Container(color: backgroundColor, child: const DriverList()),
    );
  }
}
