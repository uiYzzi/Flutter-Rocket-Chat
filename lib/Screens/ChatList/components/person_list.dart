import 'package:flutter/material.dart';
import '../../../constants.dart';

class PersonList extends StatelessWidget {
  const PersonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        title: TextField(
          onChanged: (text) {},
          decoration: const InputDecoration(
            hintText: "Search for contacts",
          ),
        ),
        elevation: 0,
      ),
    );
  }
}
