

import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/widgets/custom_appbar.dart';
import 'package:hyolmo/widgets/events.dart';
import 'package:hyolmo/widgets/side_drawer.dart';
import 'package:hyolmo/widgets/title_view.dart';
import 'package:hyolmo/widgets/youtube_player_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ""),
      endDrawer: const SideDrawer(),
      backgroundColor: AppStyles.backgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Gallery section

             YouTubeVideoPlayer(),
              const SizedBox(height: 30),

              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 2, 21, 41), // Background color
                  image: DecorationImage(
                    image: const AssetImage(
                        "assets/images/gumba.jpeg"), // Background image
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      const Color.fromARGB(250, 1, 61, 114)
                          .withOpacity(1), // Dark overlay
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'HYOLMO SOCIAL SERVICE CENTER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Hyolmo Jabsang Dechhen Hoesal Choheling Monastery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Hyolmo Social Service Center (HSSC) is a non-governmental, non-profit social organization dedicated to the preservation of culture, tradition, and religion of the Hyolmo Indigenous community. It gained legal status as a national-level organization in 1994 AD...",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),
              //main container(for three box)

              Container(
                child: const Column(
                  children: [
                    // First Box
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: BoxContainer(
                        imagePath: 'assets/images/objectives.jpg',
                        title: 'CENTER',
                        description:
                            'Hyolmo Social Service Center came into being to address the social and cultural needs of the Hyolmo community.',
                      ),
                    ),
                    SizedBox(height: 15),

                    // Second Box
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: BoxContainer(
                        imagePath: 'assets/images/programmes.jpg',
                        title: 'OBJECTIVES',
                        description:
                            'Help preserve the Himalayan Buddhist rituals and practices amongst Hyolmo community.',
                      ),
                    ),
                    SizedBox(height: 15),

                    // Third Box
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: BoxContainer(
                        imagePath: 'assets/images/logo.png',
                        title: 'PROGRAMMES',
                        description:
                            'Since its inception in 2050 BS Hyolmo Social Service center has been continually organization various activities.',
                      ),
                    ),
                  ],
                ),
              ),

//SizedBox(height: 10,),

              // // information section
              // Viewtitle(
              //   bigText: "Information",
              //   smallText: "View all",
              //   func: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (BuildContext context) => const Articles(),
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 10),
              // const InfoSection(),

              const SizedBox(height: 20),

              // events section
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Viewtitle(
                        bigText: "Upcoming Events",
                        smallText: "View all",
                        func: () {},
                      ),
                      const SizedBox(height: 10),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Events(),
                            Events(),
                            Events(),
                            Events(),
                            Events(),
                            Events(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Reusable Widget for Boxes
class BoxContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const BoxContainer(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      height: 150,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 60,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
