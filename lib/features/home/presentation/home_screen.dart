import 'package:devfest/features/home/widgets/event_banner.dart';
import 'package:devfest/features/home/widgets/module_card.dart';
import 'package:devfest/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> modules = [
    const ModuleCard(text: Constants.agenda, iconColor: Colors.red, iconData: Icons.query_builder),
    const ModuleCard(text: Constants.speakers, iconColor: Colors.green, iconData: Icons.person),
    const ModuleCard(text: Constants.team, iconColor: Colors.yellow, iconData: Icons.group),
    const ModuleCard(text: Constants.sponsors, iconColor: Colors.purple, iconData: Icons.attach_money),
    const ModuleCard(text: Constants.faq, iconColor: Colors.brown, iconData: Icons.quiz),
    const ModuleCard(text: Constants.locateUs, iconColor: Colors.blue, iconData: Icons.map),
  ];
  List<Widget> icons = [
    IconButton(
      onPressed: () {},
      icon: const FaIcon(FontAwesomeIcons.instagram),
    ),
    IconButton(
      onPressed: () {},
      icon: const FaIcon(FontAwesomeIcons.twitter),
    ),
    IconButton(
      onPressed: () {},
      icon: const FaIcon(FontAwesomeIcons.linkedin),
    ),
    IconButton(
      onPressed: () {},
      icon: const FaIcon(FontAwesomeIcons.link),
    ),
    IconButton(
      onPressed: () {},
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
