import 'package:dispatcherapp/config/colors.dart';
import 'package:dispatcherapp/config/widgets/accent_button.dart';
import 'package:dispatcherapp/pages/vehicle/vehicle_item.dart';
import 'package:flutter/material.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _list(context),
        Align(alignment: Alignment.bottomCenter, child: _updateButton()),
      ],
    );
  }

  Widget _list(context) {
    final safeBottomPadding = MediaQuery.of(context).padding.bottom;
    final bottomPadding = (safeBottomPadding + 8) * 2 + 40;

    return ListView.separated(
      itemCount: 15,
      padding: EdgeInsets.only(
        left: 16,
        top: 16,
        right: 16,
        bottom: bottomPadding,
      ),
      separatorBuilder: (context, index) {
        return const SizedBox(height: 8);
      },
      itemBuilder: (context, index) {
        return const VehicleItem();
      },
    );
  }

  Widget _updateButton() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 8),
        child: AccentButton(title: 'Update', onTap: () => {}),
      ),
    );
  }
}
