import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:url_launcher/url_launcher.dart'; // For opening links

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppStyles.primaryColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: AppStyles.backgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Hyolmo Gonpa',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500, // Slightly less bold
                  color: Colors.black, // Softer dark color
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Nestled in the serene Helambu region, Hyolmo Gonpa stands as a beacon of spiritual heritage and cultural preservation for the Hyolmo people.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Our mission is to uphold the rich traditions of Buddhism, provide a sanctuary for learning and meditation, and foster a strong sense of community and compassion.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'We are dedicated to:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500, // Slightly less bold
                color: Colors.black54, // Softer dark color
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '- Preserving the unique Hyolmo culture and language.',
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    '- Offering teachings and practices of Buddhist philosophy.',
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    '- Providing a peaceful environment for spiritual growth.',
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    '- Engaging in community outreach and charitable activities.',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Discover more about our history, activities, and how you can support our mission by visiting our website:',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: InkWell(
                onTap: () => _launchURL('https://hyolmogonpa.org/'),
                child: const Text(
                  'hyolmogonpa.org',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
