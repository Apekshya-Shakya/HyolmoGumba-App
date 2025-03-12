import 'package:flutter/material.dart';

class SettingsDemo extends StatelessWidget {
  const SettingsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold 
    (
      appBar: AppBar(
        title: const Text('Settings Page'),

      ),
      body: const Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}