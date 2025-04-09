import 'package:dispatcherapp/config/colors.dart';
import 'package:dispatcherapp/config/widgets/accent_button.dart';
import 'package:dispatcherapp/pages/vehicle/vehicle_item.dart';
import 'package:flutter/material.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [_list(), _updateButton()]);
  }

  Widget _list() {
    return ListView.separated(
      itemCount: 15,
      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
      separatorBuilder: (context, index) {
        return const SizedBox(height: 8);
      },
      itemBuilder: (context, index) {
        return const VehicleItem();
      },
    );
  }

  Widget _updateButton() {
    return AccentButton(title: 'Update', onTap: () => {});
  }
}
