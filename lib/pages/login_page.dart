// import 'package:flutter/material.dart';
// import 'package:hyolmo/constants/constant.dart';
// import 'package:hyolmo/pages/widgets/loginButton.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool _isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 245, 244, 244),

//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,

//           children: [
//              const SizedBox(height: 30),
//            // Logo
//             Image.asset(
//              'assets/images/logo.png',
//               height: 150,
//               width: 150,

//             ),
//             // Container(
//             //   height: 150,
//             //   width: 150,
//             //   color: Colors.amber,
//             // ),
//             const SizedBox(height: 10),
//             // Padding(
//             //   padding: const EdgeInsets.all(16.0),
//             //   // child: Card(
//             //   //   elevation: 5,
//             //   //   shape: RoundedRectangleBorder(
//             //   //     borderRadius: BorderRadius.circular(16),
//             //     ),
//                  Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                        Center(
//                         child: Text(
//                           'Log In',
//                           style: AppStyles.heading1

//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       // Username Field
//                        Text('User Name', style: AppStyles.text,),
//                       const SizedBox(height: 8),
//                       TextField(
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           hintText: 'Username',

//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       // Password Field
//                       Text('Password', style: AppStyles.text,),
//                       const SizedBox(height: 8),
//                       TextField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           hintText: '********',

//                         ),

//                       ),

//                       const SizedBox(height: 16),
//                       // Checkbox Row
//                       Row(
//                         children: [
//                           Checkbox(
//                             value: _isChecked,
//                             onChanged: (value) {
//                               setState(() {
//                                 _isChecked = value ?? false;
//                               });
//                             },
//                           ),
//                           const Text('Keep me logged in'),
//                         ],
//                       ),
//                       const SizedBox(height: 16),
//                       // Login Button
//                       // SizedBox(
//                       //   width: double.infinity,
//                       //   child: ElevatedButton(
//                       //     onPressed: () {

//                       //     },
//                       //     style: ElevatedButton.styleFrom(
//                       //       backgroundColor: const Color(0xFFB36A22),
//                       //       shape: RoundedRectangleBorder(
//                       //         borderRadius: BorderRadius.circular(8),
//                       //       ),
//                       //       padding: const EdgeInsets.symmetric(vertical: 16),
//                       //     ),
//                       //     child: const Text(
//                       //       'Log In',
//                       //       style: TextStyle(fontSize: 16,color: Colors.white),
//                       //     ),
//                       //   ),
//                       // ),
//                       ButtonWidget(),
//                     ],
//                   ),
//                 ),
//              // ),
//            // ),
//           ],
//         ),
//       ),

//     );
//   }
// }

//////new
import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 30),
              Center(
                child: Column(children: [
                  Image(
                    height: 150,
                    image: AssetImage('assets/images/logo.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome to Hyolmo Gonpa",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ]),
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded),
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      suffixIcon: Icon(Icons.password_sharp),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //Remember Me and Forgot Password
                  Row(children: [
                    //Remeber Me
                    Row(children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text("Remember Me"),
                    ]),
                    Spacer(),

                    //Forgot Password
                    TextButton(
                        onPressed: () {}, child: Text("Forgot Password?"))
                  ]),
                  SizedBox(
                    height: 20,
                  ),

                  //Sign in
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.blue,
                            disabledBackgroundColor: Colors.grey,
                            side: const BorderSide(color: Colors.blue),
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpPage()));
                        },
                        style: OutlinedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: AppStyles.backgroundColor,
                            disabledBackgroundColor: AppStyles.backgroundColor,
                            side: BorderSide(color: Colors.grey, width: 0.3),
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: Text(
                          "Become a Member",
                          style: TextStyle(color: Colors.black),
                        ),
                      ))
                ],
              )),
              const SizedBox(
                height: 30,
              ),
              //Divider
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                  indent: 60,
                  endIndent: 5,
                )),
                Text("Or Sign in With"),
                Flexible(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                  indent: 5,
                  endIndent: 60,
                ))
              ]),
              const SizedBox(
                height: 20,
              ),

              //Social Media
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        icon: const Image(
                          image: AssetImage("assets/images/fb_logo.png"),
                          height: 30,
                          width: 30,
                        ),
                        onPressed: () {}),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        icon: const Image(
                          image: AssetImage("assets/images/google_logo.png"),
                          height: 30,
                          width: 30,
                        ),
                        onPressed: () {}),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
