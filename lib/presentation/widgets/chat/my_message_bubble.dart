import 'package:flutter/material.dart';


class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:970175450.
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('laboris nisi ut aliquip.', style: TextStyle(color: Colors.white),)
          ,)
        ),
        const SizedBox(
          height: 10
        )
      ],
    );
  }
}