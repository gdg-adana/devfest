import 'package:devfest/core/services/config/remote_config_service.dart';
import 'package:devfest/injection.dart';
import 'package:flutter/material.dart';

class EventBanner extends StatelessWidget {
  const EventBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(getIt<RemoteConfigService>().getString(key: RemoteConfigKey.bannerUrl)),
    );
  }
}
