import 'package:eatz/CustomMaterialButton/CustomMaterialButton.dart';
import 'package:eatz/Home/Home.dart';
import 'package:eatz/HomePage/HomePage.dart';
import 'package:eatz/passwordTextFeild/PasswordTextFeild.dart';
import 'package:eatz/customTextFeild.dart/SignUpTextFormFeild.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

import 'Signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
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
                      PasswordTextFeild(
                        // isObscure: true,
                        controller: passwordController,
                        labeltext: 'Password',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {}, child: Text("Forgot password?"))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomMaterialButton(
                        ontab: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        elevation: 10,
                        buttonName: 'Sign In',
                        color: Colors.cyanAccent.shade200,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('OR')],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  image: DecorationImage(
                                      image: AssetImage('asset/google.png')),
                                  borderRadius: BorderRadius.circular(10))),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  image: DecorationImage(
                                      image: AssetImage('asset/facebook.png')),
                                  borderRadius: BorderRadius.circular(10))),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  image: DecorationImage(
                                      image: AssetImage('asset/twitter.png')),
                                  borderRadius: BorderRadius.circular(10))),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dont"t have an account?'),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()));
                              },
                              child: Text('Create'))
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
              )),
          Positioned(
            bottom: 10,
            child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // Form is valid, handle submission
                  print('Password is valid!');
                }
              },
              child: Text('Submit'),
            ),
          )
        ],
      ),
    );
  }

  final formKey = GlobalKey<FormState>();
}
