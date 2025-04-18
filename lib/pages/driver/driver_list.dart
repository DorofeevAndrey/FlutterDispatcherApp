import 'package:dispatcherapp/config/images.dart';
import 'package:dispatcherapp/config/widgets/selectable_item.dart';
import 'package:flutter/material.dart';

import '../../config/widgets/accent_button.dart';

class DriverList extends StatefulWidget {
  const DriverList({super.key});

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  int? _selectedDriverIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _list(),
        Align(alignment: Alignment.bottomCenter, child: _saveButton(context)),
      ],
    );
  }

  Widget _list() {
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
        final bool isSelected = _selectedDriverIndex == index;
        return SelectableItem(
          image: accountCircleImage,
          leftPadding: 8,
          onTap:
              () => {
                setState(() {
                  _selectedDriverIndex = index;
                }),
              },
          IsSelected: isSelected,
          title: 'Paul',
        );
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
