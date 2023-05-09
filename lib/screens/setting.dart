import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(244, 252, 252, 252),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Setting",
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
