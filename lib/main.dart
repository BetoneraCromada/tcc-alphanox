import 'package:flutter/material.dart';
import 'package:tx/view/locals/agency/agency_page.dart';
import 'package:tx/view/locals/earth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          surface: Colors.black,
          seedColor: Colors.blue,
          brightness: Brightness.dark,
          dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
        ),
      ),
      home: const AgencyMainPage(),
    );
  }
}
