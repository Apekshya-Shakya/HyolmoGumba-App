

import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/Flow_Pages/events_page.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
    // onTap: () {
    //   // Navigate to another page
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => const EventsDesPage(), // Replace with your destination page
    //     ),
    //   );
    // }, 
    onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const EventsDesPage(
        event: {
          'image': 'assets/images/gumba.jpeg',
          'title': 'Annual Puja Celebration',
          'date': 'April 30, 2025 - 10:00 AM',
          'description':
              'Join us for the Annual Puja Ceremony at the monastery. There will be prayer rituals, cultural programs, and a communal feast. All are welcome!',
        },
      ),
    ),
  );
}
,
    child: Container(
        width: size.width * 0.5,
        // height: 250,
        
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
              Image.asset(
                  'assets/images/gumba.jpeg',
                 
                ),
                
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Event Name",
                style: AppStyles.text,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Event Description",
                style: AppStyles.subtext,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        )),);
  }
}
