import 'package:flutter/material.dart';
import 'package:hyolmo/constants/constant.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppStyles.primaryColor,
          elevation: 0,
         
        ),
        backgroundColor: AppStyles.backgroundColor,
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                //title
               const Text(
                    "Create an Account",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),

                const SizedBox(
                  height: 20,
                ),

                //Form
                Form(
                    child: Column(children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                            decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.account_circle),
                          labelText: "First name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextFormField(
                            decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.account_circle),
                          labelText: "Last Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                      labelText: "Username",
                      prefixIcon: const Icon(Icons.account_circle_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      prefixIcon: const Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: const Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Row(
                    children: [
                      SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(value: true, onChanged: (value) {})),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "I agree to ",
                          style: TextStyle(fontSize: 14),
                        ),
                        TextSpan(
                          text: " Privacy Policy",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue),
                        ),
                        TextSpan(
                          text: " and",
                          style: TextStyle(fontSize: 14),
                        ),
                        TextSpan(
                          text: " Terms & Conditions",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue),
                        )
                      ]))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

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
                        child: const Text(
                          "Create an Account",
                          style: TextStyle(color: Colors.white),
                        ),
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
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                            icon: const Image(
                              image:
                                  AssetImage("assets/images/google_logo.png"),
                              height: 30,
                              width: 30,
                            ),
                            onPressed: () {}),
                      )
                    ],
                  )
                ])),
              ],
            ),
          ),
        ));
  }
}
