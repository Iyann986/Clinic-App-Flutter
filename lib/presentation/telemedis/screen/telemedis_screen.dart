import 'package:flutter/material.dart';

class TelemedisScreen extends StatefulWidget {
  const TelemedisScreen({super.key});

  @override
  State<TelemedisScreen> createState() => _TelemedisScreenState();
}

class _TelemedisScreenState extends State<TelemedisScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Telemedis Screen Content'),
      ),
    );
  }
}
