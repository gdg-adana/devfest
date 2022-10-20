import 'package:devfest/utils/constants.dart';
import 'package:flutter/material.dart';

class EventBanner extends StatelessWidget {
  const EventBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(Constants.bannerPath),
    );
  }
}
