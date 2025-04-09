import 'package:dispatcherapp/config/colors.dart';
import 'package:dispatcherapp/config/images.dart';
import 'package:flutter/material.dart';

import '../../config/styles.dart';

class VehicleItem extends StatelessWidget {
  const VehicleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Card(
        color: surfaceyColor,
        margin: EdgeInsets.zero,
        elevation: 0.06,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () => {},
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8,
              top: 8,
              right: 16,
              bottom: 8,
            ),
            child: Row(children: [motorcycleImage, _title(), _state()]),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BMW GS-7638',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: body2TextStyle,
            ),
            false
                ? Text(
                  'No driver',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: hint1TextStyle,
                )
                : RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'Driver: ', style: hint1TextStyle),
                      TextSpan(text: 'Paul', style: body2TextStyle),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }

  Widget _state() {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [statePickupImage, Text('pickup', style: hint2TextStyle)],
      ),
    );
  }
}
