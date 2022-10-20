import 'package:devfest/features/home/presentation/home_screen.dart';
import 'package:devfest/firebase_options.dart';
import 'package:devfest/injection.dart';
import 'package:devfest/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "DevFest'22 Adana",
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
