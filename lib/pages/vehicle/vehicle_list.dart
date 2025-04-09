import 'package:dispatcherapp/config/dialog/error_dialog.dart';
import 'package:dispatcherapp/config/widgets/accent_button.dart';
import 'package:dispatcherapp/pages/vehicle/vehicle_item.dart';
import 'package:flutter/material.dart';

import '../driver/driver_page.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _list(context),
        Align(alignment: Alignment.bottomCenter, child: _updateButton(context)),
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
      itemBuilder: (BuildContext context, int index) {
        return VehicleItem(
          onTap: () async {
            await _showDriverPage(context);
          },
        );
      },
    );
  }

  Widget _updateButton(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 8),
        child: AccentButton(
          title: 'Update',
          onTap: () {
            _showErrorDialog(context);
          },
        ),
      ),
    );
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ErrorDialog(
          description: 'Server is unavailable. Please try again later.',
        );
      },
    );
  }

  Future<void> _showDriverPage(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const DriverPage();
        },
      ),
    );
  }
}
