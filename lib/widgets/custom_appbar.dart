import 'package:flutter/material.dart';
import 'package:hyolmo/pages/home.dart';
import 'package:hyolmo/widgets/main_layout.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showDrawer;

  const CustomAppBar({
    super.key,
    this.title,
    this.showDrawer = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 44, 11, 14),
      elevation: 2.0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const MainLayout()),
              (route) => false,
            );
          },
          child: Image.asset(
            'assets/images/logo.png',
            height: 40,
          ),
        ),
      ),
      title: title != null
          ? Text(
              title!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            )
          : null,
      centerTitle: true,
      actions: [
        if (showDrawer)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Builder(
              builder: (context) => IconButton(
                icon: const Icon(
                  Icons.account_circle,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
