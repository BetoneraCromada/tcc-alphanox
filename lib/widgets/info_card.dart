import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const InfoCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
      subtitle: Text(subtitle),
    );
  }
}
