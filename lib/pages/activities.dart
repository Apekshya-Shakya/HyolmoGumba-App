import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyles.primaryColor,
        title: const Text(
          "Activities",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: AppStyles.backgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upcoming Event',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            ActivityCard(
              title: 'Buddha Jayanti Meditation Session',
              date: 'May 12, 2025',
              time: 'To be announced', // You can specify the time if known
              description:
                  'Join us for a special meditation session to commemorate Buddha Jayanti. This session will focus on themes of peace, enlightenment, and compassion, honoring the birth, enlightenment, and passing of the Buddha. All are welcome to participate in this auspicious gathering for collective mindfulness and reflection.',
              onJoinPressed: () {
                // Implement your join logic here (e.g., navigate to a registration page, show a confirmation dialog)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('You have expressed interest in joining.')),
                );
              },
              additionalInfo: const [
                {
                  'label': 'Location',
                  'value': 'Hyolmo Gumba'
                }, // Add location if known
                {
                  'label': 'Facilitator',
                  'value': 'To be announced'
                }, // Add facilitator if known
                {
                  'label': 'What to bring',
                  'value': 'Comfortable cushion or mat (optional)'
                },
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Connect With Us',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Stay updated on future events and activities by following our social media or subscribing to our newsletter.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 16),
            // You can add social media icons or a newsletter signup here
          ],
        ),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final String title;
  final String? date;
  final String? time;
  final String description;
  final VoidCallback? onJoinPressed;
  final List<Map<String, String>>? additionalInfo;

  const ActivityCard({
    super.key,
    required this.title,
    this.date,
    this.time,
    required this.description,
    this.onJoinPressed,
    this.additionalInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            if (date != null) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.calendar_today_outlined,
                      size: 16, color: Colors.grey),
                  const SizedBox(width: 8),
                  Text(
                    date!,
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ],
            if (time != null) ...[
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.access_time_outlined,
                      size: 16, color: Colors.grey),
                  const SizedBox(width: 8),
                  Text(
                    time!,
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ],
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.4,
              ),
            ),
            if (additionalInfo != null && additionalInfo!.isNotEmpty) ...[
              const SizedBox(height: 16),
              const Text(
                'Details:',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
              ),
              const SizedBox(height: 8),
              for (var info in additionalInfo!)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${info['label']}: ',
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54)),
                      Expanded(
                          child: Text(info['value']!,
                              style: const TextStyle(color: Colors.black54))),
                    ],
                  ),
                ),
            ],
            if (onJoinPressed != null) ...[
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onJoinPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppStyles.primaryColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'Join Session',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
