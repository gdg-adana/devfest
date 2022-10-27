import 'dart:io';

import 'package:devfest/core/services/url/url_service.dart';
import 'package:devfest/features/agenda/presentation/pages/agenda_screen.dart';
import 'package:devfest/features/faq/presentation/pages/faq_screen.dart';
import 'package:devfest/features/home/widgets/event_banner.dart';
import 'package:devfest/features/home/widgets/module_card.dart';
import 'package:devfest/features/speaker/presentation/speaker_screen.dart';
import 'package:devfest/features/sponsor/presentation/pages/sponsor_screen.dart';
import 'package:devfest/features/team/presentation/pages/team_screen.dart';
import 'package:devfest/injection.dart';
import 'package:devfest/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final UrlService _urlService;

  @override
  void initState() {
    super.initState();

    _urlService = getIt<UrlService>();
  }

  List<Widget> get modules => [
        ModuleCard(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AgendaScreen(),
                ),
              );
            },
            text: Constants.agenda,
            iconColor: Colors.red,
            iconData: Icons.query_builder),
        ModuleCard(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SpeakerScreen(),
                ),
              );
            },
            text: Constants.speakers,
            iconColor: Colors.green,
            iconData: Icons.person),
        ModuleCard(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TeamScreen(),
                ),
              );
            },
            text: Constants.team,
            iconColor: Colors.yellow,
            iconData: Icons.group),
        ModuleCard(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SponsorScreen(),
                ),
              );
            },
            text: Constants.sponsors,
            iconColor: Colors.purple,
            iconData: Icons.attach_money),
        ModuleCard(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FAQScreen(),
                ),
              );
            },
            text: Constants.faq,
            iconColor: Colors.brown,
            iconData: Icons.quiz),
        ModuleCard(
            onTap: () {
              _urlService.launchURl(
                webUrl: Platform.isIOS ? Constants.appleMapsUrl : Constants.googleMapsUrl,
                nativeUrl: Platform.isIOS ? Constants.appleMapsUrl : Constants.googleMapsWebUrl,
              );
            },
            text: Constants.locateUs,
            iconColor: Colors.blue,
            iconData: Icons.map),
      ];
  List<Widget> get icons => [
        IconButton(
          onPressed: () {
            _urlService.launchURl(nativeUrl: Constants.instagramNativeUrl, webUrl: Constants.instagramWebUrl);
          },
          icon: const FaIcon(FontAwesomeIcons.instagram),
        ),
        IconButton(
          onPressed: () {
            _urlService.launchURl(nativeUrl: Constants.twitterNativeUrl, webUrl: Constants.twitterWebUrl);
          },
          icon: const FaIcon(FontAwesomeIcons.twitter),
        ),
        IconButton(
          onPressed: () {
            _urlService.launchURl(nativeUrl: Constants.linkedinNativeUrl, webUrl: Constants.linkedinWebUrl);
          },
          icon: const FaIcon(FontAwesomeIcons.linkedin),
        ),
        IconButton(
          onPressed: () {
            _urlService.launchURl(nativeUrl: Constants.webUrl, webUrl: Constants.webUrl);
          },
          icon: const FaIcon(FontAwesomeIcons.link),
        ),
        IconButton(
          onPressed: () {
            _urlService.launchURl(nativeUrl: Constants.mailUrl, webUrl: Constants.mailUrl);
          },
          icon: const FaIcon(FontAwesomeIcons.envelope),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.home),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const EventBanner(),
            const Spacer(),
            GridView.builder(
              controller: null,
              shrinkWrap: true,
              itemCount: modules.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) => SizedBox(
                height: 100,
                child: modules[index],
              ),
            ),
            Row(
              children: const [],
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: icons,
              ),
            ),
            const Spacer(
              flex: 10,
            ),
          ],
        ),
      ),
    );
  }
}
