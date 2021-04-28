import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: const Center(
        child: Text(
          'This is the settings page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
