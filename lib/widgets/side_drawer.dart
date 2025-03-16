import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/login_page.dart';
import 'package:hyolmo/pages/settings.dart';
import 'package:url_launcher/url_launcher.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});


// Function to launch URLs
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              
              UserAccountsDrawerHeader(  
                decoration: BoxDecoration(color: AppStyles.primaryColor),
                  
                    
                accountName: const Text("Apekshya Shakya"),
                accountEmail: const Text("apekshya.shakya20@gmail.com"),
                currentAccountPicture: const CircleAvatar(
                  child: Text("A"),
                ),
              ),
              
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("View Profile"),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsDemo()));
                },
                
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Account Settings"),
                 onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsDemo()));
                },
                
              ),
              ListTile(
                leading: const Icon(Icons.question_answer),
                title: const Text("FAQ"),
                 onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsDemo()));
                },
                //selected: true,
                
              ),
              ListTile(
                leading: const Icon(Icons.support_agent_outlined),
                title: const Text("Support"),
                 onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsDemo()));
                },
                
              ),
             
              const Divider(),
              
          
              Expanded(child: Align(
                alignment: Alignment.bottomCenter,
                
              
                child: ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("Logout"),
                  onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                 
                ),
              ))
            ],
            
              
                  
            
          ),
    );
  }
}