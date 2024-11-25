import 'package:flutter/material.dart';

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("All")
      

      ),
       backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      body: ListView(
       
        children: [
          SingleChildScrollView(
            child: Column(
              children: [

                //Content inside the article

              ],
            ),
          )
        ],
      )
      ,
    );
  }
}