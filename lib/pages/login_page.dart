// ignore_for_file: unused_import

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';
import 'package:hyolmo/pages/members.dart';
import 'package:hyolmo/pages/options.dart';
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
      appBar: AppBar(
        backgroundColor: AppStyles.primaryColor,
        title: const Text(
          "Log In",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: AppStyles.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Center(
                child: Column(children: [
                  Image(
                    height: 150,
                    image: AssetImage('assets/images/logo.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome to Hyolmo Gonpa",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ]),
              ),
              Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_rounded),
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      labelText: "Password",
                      suffixIcon: const Icon(Icons.password_sharp),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
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
                    const Spacer(),

                    //Forgot Password
                    TextButton(
                        onPressed: () {}, child: const Text("Forgot Password?"))
                  ]),
                  const SizedBox(
                    height: 20,
                  ),

                  //Sign in
                  SizedBox(
                      // width: double.infinity,
                      child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MembersPage()),
                      );
                    },
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
                    child: const Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      // width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        },
                        style: OutlinedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: AppStyles.backgroundColor,
                            disabledBackgroundColor: AppStyles.backgroundColor,
                            side: const BorderSide(
                                color: Colors.grey, width: 0.3),
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text(
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
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                  indent: 60,
                  endIndent: 5,
                )),
                // ignore: unnecessary_const
                const Text("Or Sign in With"),
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
                  const SizedBox(
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
