import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

@singleton
class UrlService {
  launchURl({required String webUrl, required String nativeUrl}) async {
    try {
      await launchUrl(Uri.parse(nativeUrl));
    } catch (e) {
      await launchUrl(Uri.parse(webUrl));
    }
  }
}
