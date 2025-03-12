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
     // appBar: AppBar(
      //   backgroundColor: AppStyles.mainWhite,
      //   // title: const Text(
      //   //   'Hyolmo Gonpa',
      //   //   style: TextStyle(color: Colors.white),
      //   // ),
      //   // centerTitle: true,
      //   leading: Padding(
      //     padding: const EdgeInsets.all(8.0), 
      //     child: Image.asset(
      //       'assets/images/logo.png', 
            
      //       height: 40, 
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Builder( 
      //         builder: (context) => IconButton(
      //           icon: const Icon(Icons.account_circle, size: 30, color: Colors.black), 
      //           onPressed: () {
      //             Scaffold.of(context).openEndDrawer(); 
      //           },
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      // endDrawer: const SideDrawer(), 
    appBar: const CustomAppBar(title: ""),
      endDrawer: const SideDrawer(),
      backgroundColor: AppStyles.backgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Search for events, information, and members",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Viewtitle(
                bigText: "Information",
                smallText: "View all",
                func: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Articles(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const InfoSection(),
              const SizedBox(height: 30),
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
              const SizedBox(height: 30),
              Viewtitle(
                bigText: "Gallery",
                smallText: "View all",
                func: () {},
              ),
              const SizedBox(height: 10),
              Image.asset(
                'assets/images/aani.jpg',
                height: 300,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
