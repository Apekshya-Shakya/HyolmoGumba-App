import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/articles.dart';
import 'package:hyolmo/pages/options.dart';
import 'package:hyolmo/widgets/custom_appbar.dart';
import 'package:hyolmo/widgets/side_drawer.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ""),
      endDrawer: const SideDrawer(),
      backgroundColor: AppStyles.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const TextField(
              //   decoration: InputDecoration(
              //     hintText: 'Search',
              //     hintStyle: TextStyle(color: Colors.grey),
              //     suffixIcon: Icon(Icons.search),
              //     filled: true,
              //     fillColor: Colors.white,
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(5)),
              //       borderSide: BorderSide.none,
              //     ),
              //   ),
              // ),
              const SizedBox(height: 20),
              const Text(
                "Menu",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Menu Items with navigation
              Column(
                children: [
                  _buildMenuItem(
                      'About Us', Icons.info, context, const Articles()),
                  _buildMenuItem(
                      'Hyolmo', Icons.language, context, const Articles()),
                  _buildMenuItem('Membership', Icons.person_add, context,
                      const OptionsPage()),
                  _buildMenuItem(
                      'Activities', Icons.event, context, const Articles()),
                  _buildMenuItem(
                      'News', Icons.article, context, const Articles()),
                  _buildMenuItem(
                      'Media', Icons.photo_library, context, const Articles()),
                  _buildMenuItem('Contact Us', Icons.contact_mail, context,
                      const Articles()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(
      String title, IconData icon, BuildContext context, Widget page) {
    return ListTile(
      leading: Icon(icon, color: AppStyles.bottomBtnColor),
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
