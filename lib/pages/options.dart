import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/members.dart';
import 'package:hyolmo/pages/signup.dart';
import 'package:hyolmo/widgets/custom_appbar.dart';
import 'package:hyolmo/widgets/side_drawer.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "",),
      endDrawer: const SideDrawer(),
      
      
      

    
      backgroundColor: AppStyles.mainWhite,
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              // const SizedBox(height: 20,),
              // const Text('Membership Types', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20,),
               Column(
                  children: [
                    _buildMenuItem('Previous Committees', Icons.info, context, const MembersPage()),
                    _buildMenuItem(
                        'House_hold Members', Icons.language, context, const MembersPage()),
                    _buildMenuItem(
                        'Institutional Members', Icons.person_add, context, const MembersPage()),
                    _buildMenuItem(
                        'Life Members', Icons.event, context, const MembersPage()),
                    _buildMenuItem('General Members', Icons.article, context, const MembersPage()),
                    
                  ],
                ),
                // SizedBox(height: 20,),
                // Image.asset("assets/images/gumba.jpeg"),
                const Spacer(),
                
        
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
                            "Become a Member",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
              
            ],
          ),
         
        ),
      ),
    );
    
  }
   Widget _buildMenuItem(
      String title, IconData icon, BuildContext context, Widget page) {
    return ListTile(
      leading: Icon(icon, color: AppStyles.bottomBtnColor ),// Set custom icon and color
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}