import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),
  
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
    
          children: [
             const SizedBox(height: 30),
           // Logo
            Image.asset(
             'assets/images/logo.png', 
              height: 150,
              width: 150,
             
            ),
            // Container(
            //   height: 150,  
            //   width: 150,
            //   color: Colors.amber,
            // ),
            const SizedBox(height: 10),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   // child: Card(
            //   //   elevation: 5,
            //   //   shape: RoundedRectangleBorder(
            //   //     borderRadius: BorderRadius.circular(16),
            //     ),
                 Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Username Field
                      const Text('User Name'),
                      const SizedBox(height: 8),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintText: 'Username',

                        ),
                      ),
                      const SizedBox(height: 16),
                      // Password Field
                      const Text('Password'),
                      const SizedBox(height: 8),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintText: '********',
                        
                        ),
                        

                      ),
                      
                      const SizedBox(height: 16),
                      // Checkbox Row
                      Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                          const Text('Keep me logged in'),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // Login Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFB36A22),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: const Text(
                            'Log In',
                            style: TextStyle(fontSize: 16,color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
             // ),
           // ),
          ],
        ),
      ),
      
    );
  }
}