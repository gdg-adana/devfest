import 'package:devfest/features/agenda/domain/models/session.dart';
import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    Key? key,
    required this.session,
  }) : super(key: key);

  final Session session;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow.shade200,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${session.startTime} - ${session.endTime}",
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              session.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
