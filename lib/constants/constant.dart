import 'package:flutter/material.dart';

//Color primary = Color.fromARGB(255, 71, 12, 22);
//colors

class AppStyles{
  static Color primaryColor =  const Color.fromARGB(255, 71, 12, 22); //no idea why this color is not changing
  static Color bottomBtnColor = const Color.fromARGB(226, 121, 24, 24);
  static Color backgroundColor =const Color.fromARGB(218, 243, 241, 241);
  static Color textBlack= const Color.fromARGB(255, 2, 0, 0);
  static Color textGrey = const Color.fromARGB(255, 109, 113, 117);
  static Color mainWhite= Colors.white;
  static Color crazycolor= const Color.fromARGB(255, 24, 198, 143);


// texts
//titles
static TextStyle heading1 = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: AppStyles.textBlack,
);
// titles2
static TextStyle heading2 = const TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold
);

//subheadings
static TextStyle subheading = const TextStyle(
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
static TextStyle text = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.normal
);

//search, 
static TextStyle subtext = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.normal
);
}


