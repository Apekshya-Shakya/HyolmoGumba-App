import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';

class EventsDesPage extends StatelessWidget {
  final Map<String, String> event;

  const EventsDesPage({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event['title'] ?? 'Event', style: TextStyle(color: Colors.white),),
        backgroundColor: AppStyles.primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        
      ),
      body: ListView(
        children: [
          // Event Image
          Image.asset(
            event['image'] ?? 'assets/images/logo.png',
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  event['title'] ?? '',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                // Date & Time
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 18, color: Colors.grey),
                    const SizedBox(width: 8),
                    Text(
                      event['date'] ?? '',
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Description
                const Text(
                  'Event Description',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                Text(
                  event['description'] ?? '',
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
