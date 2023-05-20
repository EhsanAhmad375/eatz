import 'package:eatz/HomePage/HomePage.dart';
import 'package:eatz/SignupSignIn/SignIn.dart';
import 'package:eatz/passwordTextFeild/PasswordTextFeild.dart';
import 'package:eatz/customTextFeild.dart/SignUpTextFormFeild.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

import 'Signup.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firstNAmeController = TextEditingController();
  TextEditingController LastNAmeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(160)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "SIGN Up",
                        style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SignUpTextFromFeild(
                        labeltext: "First Name",
                        controller: firstNAmeController,
                        isObscure: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SignUpTextFromFeild(
                        labeltext: "Last Name",
                        controller: LastNAmeController,
                        isObscure: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SignUpTextFromFeild(
                        labeltext: "Email",
                        controller: emailController,
                        isObscure: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SignUpTextFromFeild(
                        labeltext: "Mobile",
                        controller: mobileController,
                        isObscure: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PasswordTextFeild(
                        // isObscure: true,
                        controller: passwordController,
                        labeltext: 'Password',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PasswordTextFeild(
                        // isObscure: true,
                        controller: confirmPasswordController,
                        labeltext: 'Confirm Password',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.cyan.shade400,
                        elevation: 20,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Text("SIGN Up"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()));
                              },
                              child: Text('Sign In'))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 74,
              left: 100,
              child: Container(
                height: 50,
                width: 180,

                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('asset/logo.png')),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(200))),
                // child: Image.asset(
                //   'asset/logo.png',
                //   height: 50,
                // ),
              )),
        ],
      ),
    );
  }
}
