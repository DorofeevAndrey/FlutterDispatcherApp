import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/colors.dart';
import '../../config/images.dart';
import '../../config/styles.dart';

class SelectableItem extends StatelessWidget {
  final SvgPicture image;
  final double leftPadding;
  final Function() onTap;
  final String title;
  final bool IsSelected;

  const SelectableItem({
    super.key,
    required this.image,
    required this.leftPadding,
    required this.onTap,
    required this.title,
    required this.IsSelected,
  });

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
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.only(
              left: leftPadding,
              top: 8,
              right: 16,
              bottom: 8,
            ),
            child: Row(
              spacing: 16,
              children: [
                image,
                Expanded(
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    title,
                    style: body2TextStyle,
                  ),
                ),
                if (IsSelected) checkImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
