import 'package:devfest/core/services/config/remote_config_service.dart';
import 'package:devfest/injection.dart';

class Constants {
  // firestore colletion names

  static const teamCollectionName = 'team';
  static const sponsorCollectionName = 'sponsor';
  static const faqCollectionName = 'faq';
  static const agendaCollectionName = 'agenda';

  // app constants
  static const fontName = 'Roboto';

  // name
  static const home = "Ana Sayfa";
  static const agenda = "Ajanda";
  static const speakers = "Konuşmacılar";
  static const team = "Takım";
  static const sponsors = "Sponsorlar";
  static const faq = "SSS";
  static const locateUs = "Konum";
  static const speaker = "Konuşmacı";
  static const sessionDetail = "Konuşma Detayı";

  // urls

  static String get _getTwitterUsernameFromRemoteConfig =>
      getIt<RemoteConfigService>().getString(key: RemoteConfigKey.twitterUsername);
  static String get _getInstagramUsernameFromRemoteConfig =>
      getIt<RemoteConfigService>().getString(key: RemoteConfigKey.instagramUsername);

  static String get _getLinkedinCompanyUsernameFromRemoteConfig =>
      getIt<RemoteConfigService>().getString(key: RemoteConfigKey.linkedinCompanyUsername);

  static instagramNativeUrlWithUsername({required String userName}) => 'instagram://user?username=$userName';
  static instagramWebUrlWithUsername({required String userName}) => 'https://www.instagram.com/$userName';
  static final instagramNativeUrl = instagramNativeUrlWithUsername(userName: _getInstagramUsernameFromRemoteConfig);
  static final instagramWebUrl = instagramWebUrlWithUsername(userName: _getInstagramUsernameFromRemoteConfig);

  static twitterNativeUrlWithUsername({required String userName}) => 'twitter://user?screen_name=$userName';
  static twitterWebUrlWithUsername({required String userName}) => 'https://www.twitter.com/$userName';
  static final twitterNativeUrl = twitterNativeUrlWithUsername(userName: _getTwitterUsernameFromRemoteConfig);
  static final twitterWebUrl = twitterWebUrlWithUsername(userName: _getTwitterUsernameFromRemoteConfig);

  static linkedinNativeUrlWithUsername({required String userName}) => 'linkedin://profile/$userName';
  static linkedinWebUrlWithUsername({required String userName}) => 'https://www.linkedin.com/in/$userName';
  static final linkedinNativeUrl = 'linkedin://company/$_getLinkedinCompanyUsernameFromRemoteConfig';
  static final linkedinWebUrl = 'https://www.linkedin.com/company/$_getLinkedinCompanyUsernameFromRemoteConfig/';

  static final webUrl = getIt<RemoteConfigService>().getString(key: RemoteConfigKey.webUrl);

  static final mailUrl = getIt<RemoteConfigService>().getString(key: RemoteConfigKey.mailUrl);
  static final googleMapsUrl =
      "comgooglemaps://?center=${getIt<RemoteConfigService>().getString(key: RemoteConfigKey.eventLocation)}";
  static final googleMapsWebUrl = getIt<RemoteConfigService>().getString(key: RemoteConfigKey.eventGoogleMapsWebUrl);
  static final appleMapsUrl =
      "https://maps.apple.com/?q=${getIt<RemoteConfigService>().getString(key: RemoteConfigKey.eventLocation)}";
}
