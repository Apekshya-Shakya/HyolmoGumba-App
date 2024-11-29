import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/articles.dart';
import 'package:hyolmo/widgets/events.dart';
import 'package:hyolmo/widgets/info_widget.dart';
import 'package:hyolmo/widgets/title_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor: AppStyles.backgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
             // const SizedBox(height: 20),
             //Search
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
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const InfoSection(),
              const SizedBox(
                height: 30,
              ),
              Viewtitle(
                bigText: "Upcoming Events",
                smallText: "View all",
                func: () {},
              ),
              const SizedBox(
                height: 10,
              ),

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

                      //7:27 // json mapping baki cha
                    ],
                  )),
              const SizedBox(
                height: 30,
              ),
              Viewtitle(
                bigText: "Gallery",
                smallText: "View all",
                func: () {},
              ),
              const SizedBox(height: 10),
              Image.asset(
                'assets/images/aani.jpg',

                height: 300,
                // width: 150,
              ),
              // Container(
              //   height: 300,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.blue
              //   ),

              //    ),

              const SizedBox(
                height: 20,
              ),
              // ButtonWidget(),
              // SizedBox(height:10)
            ]),
          ),
        ));
  }
}
