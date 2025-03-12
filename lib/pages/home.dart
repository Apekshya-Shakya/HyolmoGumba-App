import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/articles.dart';
import 'package:hyolmo/widgets/custom_appbar.dart';
import 'package:hyolmo/widgets/events.dart';
import 'package:hyolmo/widgets/info_widget.dart';
import 'package:hyolmo/widgets/side_drawer.dart';
import 'package:hyolmo/widgets/title_view.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // // searchbar
              // const TextField(
              //   decoration: InputDecoration(
              //     hintText: 'Search',
              //     hintStyle: TextStyle(color: Colors.grey),
              //     suffixIcon: Icon(Icons.search),
              //     filled: true,
              //     fillColor: Colors.white,
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(5)),
              //       borderSide: BorderSide.none,
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 10),
              // const Text(
              //   "Search for events, information, and members",
              //   style: TextStyle(color: Colors.grey),
              // ),

              // const SizedBox(height: 30),
              // Viewtitle(
              //   bigText: "Gallery",
              //   smallText: "View all",
              //   func: () {},
              // ),

              //Gallery section

              Image.asset(
                'assets/images/aani.jpg',
              ),
              const SizedBox(height: 30),

              //Information Banner

              // Container(
              //   height: 250,
              //   color: Color.fromARGB(200, 2, 13, 82),
              //   child: const SingleChildScrollView(
              //     scrollDirection: Axis.vertical,
              //     child: Padding(
              //       padding: EdgeInsets.all(16.0),
              //       child: Center(
                      
              //         child: Text(
              //             'Hyolmo Social Service Center',
              //             style: TextStyle(
              //               fontSize: 14,
              //               color: Colors.white,
              //             )),
                          
              //       ),
              //     ),
              //   ),
              // ),

              Container(
  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 2, 21, 41), // Background color
    image: DecorationImage(
      image: AssetImage("assets/images/gumba.jpeg"), // Background image
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(
        Color.fromARGB(250, 1, 61, 114).withOpacity(1), // Dark overlay
        BlendMode.darken,
      ),
    ),
  ),
  child: Column(
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
                child: Column(
                  children: [
                    // First Box
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: BoxContainer(
                        
                        imagePath: 'assets/images/logo.png',
                        title: 'CENTER',
                        description:
                            'Hyolmo Social Service Center came into being to address the social and cultural needs of the Hyolmo community.',
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Second Box
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: BoxContainer(
                        imagePath: 'assets/images/logo.png', // Change if needed
                        title: 'OBJECTIVES',
                        description:
                            'Help preserve the Himalayan Buddhist rituals and practices amongst Hyolmo community.',
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Third Box
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: BoxContainer(
                        imagePath: 'assets/images/logo.png', // Change if needed
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
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    // Wrap all children in a Column
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Viewtitle(
                        bigText: "Upcoming Events",
                        smallText: "View all",
                        func: () {},
                      ),
                      SizedBox(
                          height:
                              10), // No need for 'const' here if dynamically updating
                      SingleChildScrollView(
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

  BoxContainer(
      {required this.imagePath,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8), 
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 60,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
