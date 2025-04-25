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
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth >= 600;

    return Scaffold(
      appBar: const CustomAppBar(title: ""),
      endDrawer: const SideDrawer(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              "Membership",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: isTablet ? 28 : 22,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    // Previous Committee - Full Width
                    // _buildMenuItem(
                    //   title: 'Previous Committee',
                    //   icon: Icons.timeline,
                    //   context: context,
                    //   page: const MembersPage(),
                    //   height: 120,
                    //   color: Colors.purple.shade50,
                    // ),
                    // const SizedBox(height: 12),
                     Row(
                      children: [
                        Expanded(
                          child: _buildMenuItem(
                            title: 'Previous Committee',
                            icon: Icons.document_scanner,
                            context: context,
                            page: const MembersPage(),
                            height: 150,
                            color: Colors.pink.shade50,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // First row with 2 items
                    Row(
                      children: [
                        Expanded(
                          child: _buildMenuItem(
                            title: 'Household Members',
                            icon: Icons.family_restroom,
                            context: context,
                            page: const MembersPage(),
                            height: 150,
                            color: Colors.teal.shade50,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildMenuItem(
                            title: 'Institutional Members',
                            icon: Icons.account_balance,
                            context: context,
                            page: const MembersPage(),
                            height: 150,
                            color: Colors.orange.shade50,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Second row with 2 items
                    Row(
                      children: [
                        Expanded(
                          child: _buildMenuItem(
                            title: 'Life Members',
                            icon: Icons.emoji_events,
                            context: context,
                            page: const MembersPage(),
                            height: 150,
                            color: Colors.green.shade50,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildMenuItem(
                            title: 'General Members',
                            icon: Icons.people_alt,
                            context: context,
                            page: const MembersPage(),
                            height: 150,
                            color: Colors.blue.shade50,
                          ),
                        ),
                      ],
                    ),
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
                      MaterialPageRoute(builder: (context) => const SignUpPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4A0E0E),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                  ),
                  child: Text(
                    "Become a Member",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isTablet ? 18 : 16,
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

  Widget _buildMenuItem({
    required String title,
    required IconData icon,
    required BuildContext context,
    required Widget page,
    double height = 100,
    Color color = Colors.white,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        height: height,
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: Colors.black87),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
