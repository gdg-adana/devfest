import 'package:devfest/core/widgets/person_card.dart';
import 'package:devfest/features/team/domain/models/member.dart';
import 'package:flutter/material.dart';

class TeamList extends StatelessWidget {
  const TeamList({
    Key? key,
    required this.members,
  }) : super(key: key);

  final List<Member> members;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: members.length,
      itemBuilder: (context, index) => SizedBox(
        height: 150,
        child: PersonCard(member: members[index]),
      ),
    );
  }
}
