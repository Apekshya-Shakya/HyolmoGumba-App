import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/login_page.dart';
import 'package:hyolmo/pages/settings.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

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
                leading: const Icon(Icons.settings),
                title: const Text("Account Settings"),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsDemo()));
                },
                
              ),
              const ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text(" Dark Theme"),
                
              ),
              const ListTile(
                leading: Icon(Icons.notification_add),
                title: Text("Notification Settings"),
                //selected: true,
                
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Account Settings"),
                
              ),
              const ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text(" Dark Theme"),
                
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