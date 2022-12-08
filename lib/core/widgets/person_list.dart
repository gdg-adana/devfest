import 'package:devfest/core/widgets/person_card.dart';
import 'package:devfest/features/agenda/domain/models/speaker.dart';
import 'package:devfest/features/team/domain/models/member.dart';
import 'package:flutter/material.dart';

class PersonList extends StatelessWidget {
  const PersonList({
    Key? key,
    this.members,
    this.speakers,
  })  : assert(members != null || speakers != null),
        super(key: key);

  final List<Member>? members;
  final List<Speaker>? speakers;

  int get itemCount => members != null ? members!.length : speakers!.length;
  bool get isMemberList => members != null;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: itemCount,
      itemBuilder: (context, index) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: isMemberList
            ? PersonCard(
                name: members![index].name,
                image: members![index].image,
                linkedin: members![index].linkedin,
                twitter: members![index].twitter,
                title: members![index].title,
              )
            : PersonCard(
                name: speakers![index].name,
                image: speakers![index].image,
                linkedin: speakers![index].linkedin!,
                twitter: speakers![index].twitter!,
                company: speakers![index].company,
                title: speakers![index].title,
              ),
      ),
    );
  }
}
