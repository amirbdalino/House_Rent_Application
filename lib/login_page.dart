// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:house_rent_application/pages/registration.dart';
import 'package:house_rent_application/widgets/default_input_fields.dart';
import 'package:house_rent_application/widgets/default_lock_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.grey[300],

      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: Container(
              height: 300,
              child: Stack(
                children: [
                  Positioned(
                    top: -20,
                    height: 290,
                    width: width,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/background.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    height: 300,
                    width: width + 30,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/background-2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          //Hello again
          const Text(
            "Login",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 12, 7, 7),
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 30.0),
          //email textfield
          const DefaultInputField(
            labeltext: "E-mail address",
            textfieldicon: Icons.email,
          ),

          SizedBox(height: 20.0),
          //email textfield
          LockTextField(textlabel: "Password"),

          //sign in button
          SizedBox(
            height: 20.0,
          ),

          SizedBox(
            width: 220.0,
            height: 40.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),

          SizedBox(height: 20.0),
          //not a member ? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a Member?",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(width: 10.0),
              GestureDetector(
                  child: Text(
                    "Register now!",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 203, 13),
                        fontSize: 15,
                        decoration: TextDecoration.underline),
                  ),
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Registration()),
                      ))
            ],
          ),
        ]),
      ),
    );
  }
}
