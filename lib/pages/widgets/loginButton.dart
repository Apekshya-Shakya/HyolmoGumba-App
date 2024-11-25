// ignore: file_names
import 'package:flutter/material.dart';
import 'package:hyolmo/pages/login_page.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () { 
                            //  Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const LoginPage()),
                            // );
                            
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
    );
  }
}