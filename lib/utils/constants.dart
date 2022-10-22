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

  // assets path
  static const bannerPath = 'assets/images/devfest_logo.png';

  // urls

  static instagramNativeUrlWithUsername({required String userName}) => 'instagram://user?username=$userName';
  static instagramWebUrlWithUsername({required String userName}) => 'https://www.instagram.com/$userName';
  static final instagramNativeUrl = instagramNativeUrlWithUsername(userName: 'gdg_adana');
  static final instagramWebUrl = instagramWebUrlWithUsername(userName: 'gdg_adana');

  static twitterNativeUrlWithUsername({required String userName}) => 'twitter://user?screen_name=$userName';
  static twitterWebUrlWithUsername({required String userName}) => 'https://www.twitter.com/$userName';
  static final twitterNativeUrl = twitterNativeUrlWithUsername(userName: 'gdg_adana');
  static final twitterWebUrl = twitterWebUrlWithUsername(userName: 'gdg_adana');

  static linkedinNativeUrlWithUsername({required String userName}) => 'linkedin://profile/$userName';
  static linkedinWebUrlWithUsername({required String userName}) => 'https://www.linkedin.com/in/$userName';
  static const linkedinNativeUrl = 'linkedin://company/gdg-adana';
  static const linkedinWebUrl = 'https://www.linkedin.com/company/gdg-adana/';

  static const webUrl = 'https://linktr.ee/gdgadana';

  static const mailUrl = "mailto:info@gdgadana.org?subject=Devfest'22%20Adana";
  static const googleMapsUrl = "comgooglemaps://?center=37.0415421,35.3612285";
  static const googleMapsWebUrl = "https://goo.gl/maps/T42hrWi4DGAZa8E2A";
  static const appleMapsUrl = "https://maps.apple.com/?q=37.0415421,35.3612285";
}
