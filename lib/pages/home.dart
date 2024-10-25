import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
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
           
           const SizedBox(height: 10,),
           const Text("Search for events, information, and members", style: TextStyle(color: Colors.grey),),
           const SizedBox(height: 20,),
           const Text("Information", style: TextStyle(fontSize: 24, fontWeight:FontWeight.bold),),
           const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("History of the Monastery", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    Text("Lorem ipsum file")
                  ],
                ),
              ),
             ),
              const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mission and Vision", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    Text("Lorem ipsum file")
                  ],
                ),
              ),
             ),
             SizedBox(height: 20,),
             Text("Upcoming events", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
             Container(
              child: Image.asset('assets/images/fb.png', 
              height: 100,
              width: 100,),
              
             )
            ]
                ),
        ),
    ));
  }
}