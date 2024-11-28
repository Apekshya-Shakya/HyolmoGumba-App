import 'package:flutter/material.dart';
import 'package:hyolmo/pages/signup.dart';
import 'package:hyolmo/pages/widgets/loginButton.dart';

class Memberspage extends StatelessWidget {
  const Memberspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    
      backgroundColor:  const Color.fromARGB(255, 245, 244, 244),
      
      body: Center(
        child: Column(
          children: [
            const Text('회원 관리', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20,),
      
             SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ),
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
                          "hello in",
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
            
          ],
        ),
       
      ),
    );
    
  }
}