import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SingleChildScrollView(
        child: Padding(padding: 
         EdgeInsets.all(20.0),
         child: Column(
          children: [
            //title
            Text("Create an Account", style: TextStyle(fontSize: 20),),

            SizedBox(height: 20,),

            //Form
            Form(child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: 
                       TextFormField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: "First name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child:  TextFormField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: "Last Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                    )
                    

                  ],
                ),
                SizedBox(height: 15,),
                TextFormField(expands: false,
                decoration: InputDecoration(labelText: "Username",
                prefixIcon: Icon(Icons.account_circle_rounded),
                 border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),),),

                SizedBox(height: 15,),
                TextFormField(expands: false,
                decoration: InputDecoration(labelText: "Email",
                prefixIcon: Icon(Icons.email),
                 border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),),),

                 SizedBox(height: 15,),
                TextFormField(expands: false,
                decoration: InputDecoration(labelText: "Phone Number",
                prefixIcon: Icon(Icons.phone),
                 border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),),),

                SizedBox(height: 15,),
                TextFormField(expands: false,
                decoration: InputDecoration(labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.password),
                 border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),),),
                const SizedBox(height: 20,),

                Row(
                  children: [
                    SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
                    SizedBox(width: 20,),
                    

                  ],
                )
              ]
            )),
          ],
         ),
         
      ),
    )
    );
  }
}