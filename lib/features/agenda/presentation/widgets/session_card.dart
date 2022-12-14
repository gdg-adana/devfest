import 'package:devfest/features/agenda/domain/models/session.dart';
import 'package:devfest/features/agenda/presentation/pages/session_detail.dart';
import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    Key? key,
    required this.session,
  }) : super(key: key);

  final Session session;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: session.speaker == null
          ? null
          : () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SessionDetail(session: session),
                ),
              );
            },
      child: Card(
        color: session.speaker != null ? Colors.green.shade600 : Colors.red.shade600,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      session.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    session.speaker != null
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                session.speaker!.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${session.speaker!.title} @${session.speaker!.company}",
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    session.startTime,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "-",
                  ),
                  Text(
                    session.endTime,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
