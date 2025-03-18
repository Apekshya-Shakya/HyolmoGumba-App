import 'package:flutter/material.dart';

class EventsDesPage extends StatelessWidget {
  const EventsDesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Event Details'),
       ),
      
      body: const Center(
        child: FlutterLogo(
          size: 50,
        ),
      )
    );
  }
}