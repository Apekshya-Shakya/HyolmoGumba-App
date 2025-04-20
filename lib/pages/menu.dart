import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/Hyolmo.dart';
import 'package:hyolmo/pages/activities.dart';
import 'package:hyolmo/pages/contact_us.dart';
import 'package:hyolmo/pages/news.dart';
import 'package:hyolmo/widgets/custom_appbar.dart';
import 'package:hyolmo/widgets/side_drawer.dart';
import 'package:hyolmo/pages/about_us.dart';
import 'package:hyolmo/pages/media.dart';
import 'package:hyolmo/pages/membership_menu.dart';

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
                      'About Us', Icons.info, context, const AboutUsPage()),
                  _buildMenuItem(
                      'Hyolmo', Icons.language, context, const HyolmoPage()),
                  _buildMenuItem('Membership', Icons.person_add, context,
                      const MembersMenuPage()),
                  _buildMenuItem('Activities', Icons.event, context,
                      const ActivitiesPage()),
                  _buildMenuItem(
                      'News', Icons.article, context, const NewsPage()),
                  _buildMenuItem(
                      'Media', Icons.photo_library, context, const MediaPage()),
                  _buildMenuItem('Contact Us', Icons.contact_mail, context,
                      const ContactUsPage()),
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
