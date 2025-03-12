import 'package:flutter/material.dart';
import 'package:hyolmo/widgets/side_drawer.dart';
import 'package:hyolmo/constants/constant.dart';

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
      backgroundColor: AppStyles.mainWhite,
      elevation: 2.0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'assets/images/logo.png', 
          height: 40,
          
        ),
      ),
      title: title != null 
          ? Text(
              title!,
              style: const TextStyle(color: Colors.black),
            )
          : null,
      centerTitle: true,
      actions: [
        if (showDrawer) // Only show drawer button if enabled
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.account_circle, size: 30, color: Colors.black),
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
