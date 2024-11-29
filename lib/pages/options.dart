import 'package:flutter/material.dart';
import 'package:hyolmo/pages/members.dart';
import 'package:hyolmo/pages/signup.dart';
import 'package:hyolmo/pages/widgets/blogs.dart';
import 'package:hyolmo/pages/widgets/loginButton.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    
      backgroundColor:  const Color.fromARGB(255, 245, 244, 244),
      
      body: Center(
        child: Column(
          children: [
            const Text('회원 관리', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20,),
            //  Column(
            //     children: [
            //       _buildMenuItem('About Us', Icons.info, context, const Events()),
            //       _buildMenuItem(
            //           'Hyolmo', Icons.language, context, const Events()),
            //       _buildMenuItem(
            //           'Membership', Icons.person_add, context, const MembersPage()),
            //       _buildMenuItem(
            //           'Activities', Icons.event, context, const Events()),
            //       _buildMenuItem('News', Icons.article, context, const Events()),
            //       _buildMenuItem(
            //           'Media', Icons.photo_library, context, const Events()),
            //       _buildMenuItem('Contact Us', Icons.contact_mail, context,
            //           const Events()),
            //     ],
            //   ),
      
             SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.blue,
                            disabledBackgroundColor: Colors.grey,
                            side: const BorderSide(color: Colors.blue),
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text(
                          "hello in",
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
            
          ],
        ),
       
      ),
    );
    
  }
  //  Widget _buildMenuItem(
  //     String title, IconData icon, BuildContext context, Widget page) {
  //   return ListTile(
  //     leading: Icon(icon, color: Colors.blue), // Set custom icon and color
  //     title: Text(
  //       title,
  //       style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
  //     ),
  //     onTap: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => page),
  //       );
  //     },
  //   );
  // }
}