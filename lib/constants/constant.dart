import 'package:flutter/material.dart';

Color primary = Color.fromARGB(211, 98, 19, 30);
//colors

class AppStyles{
  static Color primaryColor = primary;
  static Color backgroundColor =Color.fromARGB(238, 253, 251, 251);
  static Color textBlack= Color.fromARGB(255, 2, 0, 0);
  static Color textGrey = Color.fromARGB(255, 109, 113, 117);
  static Color mainWhite= Colors.white;
  static Color crazycolor= Color.fromARGB(255, 24, 198, 143);


// texts
//titles
static TextStyle heading1 = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: AppStyles.textBlack,
);
// titles2
static TextStyle heading2 = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold
);

//subheadings
static TextStyle subheading = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold
);

//viewalls and more
static TextStyle subheading2 = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.normal,
  color: textGrey
);


//text
static TextStyle text = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.normal
);

//search, 
static TextStyle subtext = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.normal
);
}


