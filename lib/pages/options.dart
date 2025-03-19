import 'package:flutter/material.dart';
import 'package:hyolmo/pages/members.dart';
import 'package:hyolmo/pages/signup.dart';
import 'package:hyolmo/widgets/custom_appbar.dart';
import 'package:hyolmo/widgets/side_drawer.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ""),
      endDrawer: const SideDrawer(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Membership",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    _buildMenuItem(
                      'Previous Committee',
                      Icons.history,
                      context,
                      const MembersPage(),
                      isLarge: true,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: _buildMenuItem(
                            'Household Members',
                            Icons.home,
                            context,
                            const MembersPage(),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _buildMenuItem(
                            'Institutional Members',
                            Icons.apartment,
                            context,
                            const MembersPage(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: _buildMenuItem(
                            'Life Members',
                            Icons.directions_bike, //Need to change the icon
                            context,
                            const MembersPage(),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _buildMenuItem(
                            'General Members',
                            Icons.groups,
                            context,
                            const MembersPage(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xFF4A0E0E),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Become a Member",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
      String title, IconData icon, BuildContext context, Widget page,
      {bool isLarge = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        width: double.infinity,
        height: isLarge ? 120 : 100, // Increased height for better spacing
        decoration: BoxDecoration(
          color: const Color(0xFF1E4A76),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 30),
            const SizedBox(height: 8), // Adds space between icon and text
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
