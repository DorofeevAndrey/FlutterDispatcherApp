import 'package:dispatcherapp/config/widgets/accent_button.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class ErrorDialog extends StatelessWidget {
  final String description;

  const ErrorDialog({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Oops...', style: head1TextStyle),
            const SizedBox(height: 8),
            Text(description, style: body1TextStyle),
            const SizedBox(height: 20),
            Center(
              child: AccentButton(
                title: 'OK',
                onTap: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
