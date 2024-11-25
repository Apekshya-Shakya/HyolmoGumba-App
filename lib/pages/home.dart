import 'package:flutter/material.dart';
import 'package:hyolmo/pages/articles.dart';
import 'package:hyolmo/pages/widgets/blogs.dart';
import 'package:hyolmo/pages/widgets/loginButton.dart';
import 'package:hyolmo/widgets/info_widget.dart';
import 'package:hyolmo/widgets/title_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 244, 244),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
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
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Search for events, information, and members",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              Viewtitle(
                bigText: "Information",
                smallText: "View all",
                func: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const Articles(),
                )),
              ),
              SizedBox(
                height: 10,
              ),
              InfoSection(),
              SizedBox(
                height: 30,
              ),
              Viewtitle(
                bigText: "Upcoming Events",
                smallText: "View all",
                func: () {
                },
              ),
              SizedBox(
                height: 10,
              ),

              SingleChildScrollView(scrollDirection: Axis.horizontal,
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
              SizedBox(
                height: 30,
              ),
              Viewtitle(
                bigText: "Gallery",
                smallText: "View all",
                func: () {
                },
              ),
              SizedBox(height:10),
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

              SizedBox(height: 20,),
              // ButtonWidget(),
              // SizedBox(height:10)
            ]),

            
          ),
        ));
  }
}
