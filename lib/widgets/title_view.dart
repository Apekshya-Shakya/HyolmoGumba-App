// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/Flow_Pages/events_page.dart';
import 'package:hyolmo/pages/articles.dart';

class Viewtitle extends StatelessWidget {
  const Viewtitle({Key? key, required this.bigText, required this.smallText, required this.func});
  final String bigText;
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.heading1),
        InkWell(
          onTap: 
          
          () {
 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const EventsDesPage(),
                ));
          },
          child: Text(smallText, style: AppStyles.subheading2),
        )
      ],
    );
  }
}
