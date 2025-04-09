import 'package:flutter/material.dart';

import '../../config/colors.dart';
import '../../config/widgets/accent_button.dart';

class DriverList extends StatelessWidget {
  const DriverList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _list(context),
        Align(alignment: Alignment.bottomCenter, child: _saveButton(context)),
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
        return Container(height: 64, color: surfaceyColor);
      },
    );
  }

  Widget _saveButton(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 8),
        child: AccentButton(title: 'Save', onTap: () => {}),
      ),
    );
  }
}
