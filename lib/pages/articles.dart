import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyles.primaryColor,
        title: const Text("All", style: TextStyle(color: Colors.white),),
          iconTheme: const IconThemeData(color: Colors.white),),
        
      

    
       backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      body: ListView(
       
        children: const [
          SingleChildScrollView(
            child: Column(
              children: [

              

              ],
            ),
          )
        ],
      )
      ,
    );
  }
}