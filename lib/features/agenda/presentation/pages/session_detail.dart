import 'package:devfest/core/widgets/person_card.dart';
import 'package:devfest/features/agenda/domain/models/session.dart';
import 'package:devfest/utils/constants.dart';
import 'package:flutter/material.dart';

class SessionDetail extends StatelessWidget {
  const SessionDetail({super.key, required this.session});

  final Session session;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.sessionDetail),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      session.title,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${session.startTime} - ${session.endTime}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Text(session.desc!),
            const Spacer(
              flex: 5,
            ),
            const Text(
              Constants.speaker,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 4,
              child: PersonCard(
                title: session.speaker!.title,
                name: session.speaker!.name,
                image: session.speaker!.image,
                linkedin: session.speaker!.linkedin!,
                twitter: session.speaker!.twitter!,
                company: session.speaker!.company,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
