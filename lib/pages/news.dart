import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/widgets/newsdetail.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  final List<Map<String, dynamic>> _newsItems = const [
    {
      'title': 'Upcoming Buddha Jayanti Celebration',
      'date': '2025-05-12',
      'excerpt':
          'Join us for a special celebration of Buddha Jayanti with prayers, meditation, and cultural events.',
      'details': 'The celebration will commence at dawn with chanting...',
    },
    {
      'title': 'Monastery Welcomes New Monks',
      'date': '2025-04-15',
      'excerpt':
          'We are delighted to welcome three new monks to our community. Their dedication is a source of inspiration.',
      'details': 'The welcoming ceremony was held on Sunday...',
    },
    {
      'title': 'Successful Completion of Retreat',
      'date': '2025-04-05',
      'excerpt':
          'Our recent meditation retreat concluded successfully with participants experiencing profound inner peace.',
      'details': 'The retreat focused on mindfulness and silent meditation...',
    },
    {
      'title': 'Community Outreach Program Held',
      'date': '2025-03-28',
      'excerpt':
          'Hyolmo Gumba organized a community outreach program providing essential supplies to local families.',
      'details': 'Volunteers distributed food and clothing to those in need...',
    },
    {
      'title': 'Visit by Esteemed Scholar',
      'date': '2025-03-10',
      'excerpt':
          'We were honored to host the renowned Buddhist scholar, Venerable [Scholar Name], for a series of talks.',
      'details': 'Venerable [Scholar Name] shared profound insights on...',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News & Updates',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppStyles.primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: AppStyles.backgroundColor,
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _newsItems.length,
        itemBuilder: (context, index) {
          final newsItem = _newsItems[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 3,
            child: InkWell(
              onTap: () {
                // Navigate to a detailed news page, passing the newsItem
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content:
                          Text('Viewing details for: ${newsItem['title']}')),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsItem['title'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      newsItem['date'],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      newsItem['excerpt'],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NewsDetailPage(newsItem: newsItem),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: AppStyles.primaryColor,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Read More',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(Icons.arrow_forward_ios,
                                size: 14, color: AppStyles.primaryColor),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
