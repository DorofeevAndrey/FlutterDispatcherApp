import 'package:dispatcherapp/config/images.dart';
import 'package:dispatcherapp/config/widgets/selectable_item.dart';
import 'package:flutter/material.dart';

import '../../config/widgets/accent_button.dart';

class VehicalStateList extends StatefulWidget {
  const VehicalStateList({super.key});

  @override
  State<VehicalStateList> createState() => _DriverListState();
}

class _DriverListState extends State<VehicalStateList> {
  int? _selectedStateIndex;

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
        final bool isSelected = _selectedStateIndex == index;
        return SelectableItem(
          image: statePickupImage,
          leftPadding: 16,
          onTap:
              () => {
                setState(() {
                  _selectedStateIndex = index;
                }),
              },
          IsSelected: isSelected,
          title: 'Pickup',
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
