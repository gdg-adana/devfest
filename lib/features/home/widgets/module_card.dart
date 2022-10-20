import 'package:flutter/material.dart';

class ModuleCard extends StatelessWidget {
  const ModuleCard({
    required this.text,
    required this.iconColor,
    required this.iconData,
    Key? key,
  }) : super(key: key);

  final String text;
  final IconData iconData;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: iconColor,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(text),
        ],
      ),
    );
  }
}
