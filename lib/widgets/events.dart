

import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/Flow_Pages/events_page.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
    onTap: () {
      // Navigate to another page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EventsDesPage(), // Replace with your destination page
        ),
      );
    }, 
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
