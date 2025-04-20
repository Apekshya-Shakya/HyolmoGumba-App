import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class HyolmoPage extends StatelessWidget {
  const HyolmoPage({super.key});

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
          'Hyolmo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white, // Set AppBar text color to white
          ),
        ),
        backgroundColor: AppStyles.primaryColor,
        iconTheme: const IconThemeData(
            color: Colors.white), // Set back arrow color to white
      ),
      backgroundColor: AppStyles.backgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to Hyolmo Gumba',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Hyolmo Gumba is a sacred monastery dedicated to preserving the rich cultural and spiritual heritage of the Hyolmo community. Located amidst the serene beauty of the Himalayas, the monastery serves as a center for meditation, learning, and community activities.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Our Mission',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Our mission is to promote peace, compassion, and spiritual growth through the teachings of Buddhism. We aim to preserve the unique traditions of the Hyolmo people and provide a sanctuary for those seeking spiritual enlightenment.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Activities and Programs',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Hyolmo Gumba organizes various activities and programs, including meditation retreats, cultural festivals, and community service initiatives. These events aim to foster a sense of unity and compassion among all participants.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  height: 1.5,
                ),
                children: [
                  const TextSpan(
                      text:
                          'For more information, please visit our website at '),
                  TextSpan(
                    text: 'https://hyolmogonpa.org/',
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => _launchURL('https://hyolmogonpa.org/'),
                  ),
                  const TextSpan(text: ' or contact us at '),
                  TextSpan(
                    text: 'info@hyolmogonpa.org',
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => _launchURL('mailto:info@hyolmogonpa.org'),
                  ),
                  const TextSpan(text: '.'),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
