import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';

enum RemoteConfigKey {
  bannerUrl,
  appTitle,
  instagramUsername,
  twitterUsername,
  linkedinCompanyUsername,
  webUrl,
  mailUrl,
  eventGoogleMapsWebUrl,
  eventLocation,
}

@singleton
class RemoteConfigService {
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  RemoteConfigService(this._firebaseRemoteConfig);

  String getString({required RemoteConfigKey key}) {
    return _firebaseRemoteConfig.getString(key.name);
  }
}

@module
abstract class FirebaseRemoteConfigModule {
  FirebaseRemoteConfig get instance => FirebaseRemoteConfig.instance;
}
