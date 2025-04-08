import 'package:dispatcherapp/config/colors.dart';
import 'package:dispatcherapp/config/images.dart';
import 'package:flutter/material.dart';

class VehicleItem extends StatelessWidget {
  const VehicleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: surfaceyColor,
      margin: EdgeInsets.zero,
      elevation: 0.06,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => {},
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 8, right: 16, bottom: 8),
          child: Row(children: [motorcycleImage, _title(), _state()]),
        ),
      ),
    );
  }

  Widget _title() {
    return Container();
  }

  Widget _state() {
    return Container();
  }
}
