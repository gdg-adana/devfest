import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({
    Key? key,
    required this.name,
    required this.image,
    required this.linkedin,
    required this.twitter,
    this.title,
    this.company,
    this.onTap,
  })  : assert(title != null || company != null),
        super(key: key);

  final String name;
  final String image;
  final String linkedin;
  final String twitter;
  final String? title;
  final String? company;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 5,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: Image.network(
                image,
                fit: BoxFit.cover,
                width: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    title ?? company!,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.linkedin),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.twitter),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
