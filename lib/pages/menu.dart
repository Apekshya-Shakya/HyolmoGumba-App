import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      body: Center(
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
              // Menu Items
              Expanded(
                child: ListView(
                  children: [
                    _buildMenuItem('About Us'),
                    _buildMenuItem('Hyolmo'),
                    _buildMenuItem('Membership'),
                    _buildMenuItem('Activities', trailing: Icon(Icons.arrow_drop_down)),
                    _buildMenuItem('News'),
                    _buildMenuItem('Media'),
                    _buildMenuItem('Contact Us'),
                  ],
                ),
              ),
              
              SizedBox(height: 20),
            
              SizedBox(height: 20),
            ],
                    ),
          ),
      ),
    );
  }

  // Helper widget to create a menu item
  Widget _buildMenuItem(String title, {Widget? trailing}) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      trailing: trailing,
      onTap: () {
        // Define navigation or actions when tapping the menu item
      },
    );
  }

      
      
    
          
          
        
  }
