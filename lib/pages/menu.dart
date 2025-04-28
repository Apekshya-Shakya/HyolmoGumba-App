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
              // const SizedBox(height: 20),
              const Text(
                "Menu",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Menu Items
              _buildMenuCard(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildMenuItem('About Us', Icons.account_balance, context, const AboutUsPage()),
          const Divider(),
          _buildMenuItem('Hyolmo', Icons.terrain, context, const HyolmoPage()),
          const Divider(),
          _buildMenuItem('Membership', Icons.verified_user, context, const MembersMenuPage()),
          const Divider(),
          _buildMenuItem('Activities', Icons.local_activity, context, const ActivitiesPage()),
          const Divider(),
          _buildMenuItem('News', Icons.newspaper, context, const NewsPage()),
          const Divider(),
          _buildMenuItem('Media', Icons.perm_media, context, const MediaPage()),
          const Divider(),
          _buildMenuItem('Contact Us', Icons.support_agent, context, const ContactUsPage()),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title, IconData icon, BuildContext context, Widget page) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: Icon(icon, color: AppStyles.bottomBtnColor),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
