import 'package:devfest/core/services/config/remote_config_service.dart';
import 'package:devfest/features/home/presentation/home_screen.dart';
import 'package:devfest/firebase_options.dart';
import 'package:devfest/injection.dart';
import 'package:devfest/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final messaging = FirebaseMessaging.instance;
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  await FirebaseMessaging.instance.subscribeToTopic('all');
  await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  configureDependencies();
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval: const Duration(minutes: 1),
  ));
  await remoteConfig.setDefaults({
    RemoteConfigKey.appTitle.name: "'DevFest''22 Adana",
    RemoteConfigKey.bannerUrl.name:
        "https://firebasestorage.googleapis.com/v0/b/devfest-adana-6723f.appspot.com/o/devfest_logo.png?alt=media",
    RemoteConfigKey.linkedinCompanyUsername.name: "gdg-adana",
    RemoteConfigKey.twitterUsername.name: "gdg_adana",
    RemoteConfigKey.instagramUsername.name: "gdg_adana",
    RemoteConfigKey.mailUrl.name: "mailto:info@gdgadana.org?subject=Devfest'22%20Adana",
    RemoteConfigKey.webUrl.name: "https://linktr.ee/gdgadana",
    RemoteConfigKey.eventLocation.name: "37.0346193,35.2556483",
    RemoteConfigKey.eventGoogleMapsWebUrl.name: "https://goo.gl/maps/RGYmHmpz1Go9WBm27",
  });
  await remoteConfig.fetchAndActivate();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: getIt<RemoteConfigService>().getString(key: RemoteConfigKey.appTitle),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
          fontFamily: Constants.fontName,
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
              color: Colors.white,
              titleTextStyle: TextStyle(
                fontFamily: Constants.fontName,
                color: Colors.black,
                fontSize: 18,
              )),
        ),
        home: const HomeScreen());
  }
}
