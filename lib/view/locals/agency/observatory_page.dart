import 'package:flutter/material.dart';
import 'package:tx/widgets/info_card.dart';

class ObservatoryPage extends StatefulWidget {
  const ObservatoryPage({super.key});

  @override
  State<ObservatoryPage> createState() => _ObservatoryPageState();
}

class _ObservatoryPageState extends State<ObservatoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Batman'),
      ),
    );
  }
}
