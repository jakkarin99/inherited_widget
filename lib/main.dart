import 'package:flutter/material.dart';
import 'controller/inherited-widget/inherited_widget.dart';

main() => runApp(const OurApp());

class OurApp extends StatelessWidget {
  const OurApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Inherited Widget Explained',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: InheritedWidgetPage(),
      ),
    );
  }
}
