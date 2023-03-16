import 'package:flutter/material.dart';
import 'widgets-lists/widgets_lists.dart';

class InheritedWidgetPage extends StatefulWidget {
  const InheritedWidgetPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InheritedWidgetPageState createState() => _InheritedWidgetPageState();
}

class _InheritedWidgetPageState extends State<InheritedWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(30.0),
      children: [
        const Text(
          "Passing eye color through inheritance from grandfather to grandson:",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10.0,
        ),
        EyeColor(
          color: Colors.lightBlue,
          child: Builder(builder: (BuildContext innerContext) {
            return const GrandParent();
          }),
        ),
        const SizedBox(
          height: 25.0,
        ),
        const Text(
          "Changing ages of uncles and their families:",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 25.0,
        ),
        ChangingAge(
          age: ChangeAge(age: 15),
          child: Builder(builder: (BuildContext textContext) {
            return const UncleClasses();
          }),
        ),
      ],
    );
  }
}
