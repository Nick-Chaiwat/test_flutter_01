import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(244, 252, 252, 252),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "User",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(197, 0, 0, 0)),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.max, children: []),
        ));
  }
}
