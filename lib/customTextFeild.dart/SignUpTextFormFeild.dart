import 'package:flutter/material.dart';
// import 'package:new_stars/Constants.dart';

class SignUpTextFromFeild extends StatelessWidget {
  final TextEditingController? controller;
  final String labeltext;
  final bool isObscure;
  final Widget? sufixicon;
  SignUpTextFromFeild(
      {Key? key,
      this.controller,
      required this.labeltext,
      this.isObscure = false,
      this.sufixicon})
      : super(key: key);
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: TextFormField(
          obscureText: isObscure,
          controller: controller,
          decoration: InputDecoration(
              suffixIcon: sufixicon,
              focusColor: Colors.white,
              fillColor: Colors.white,
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              label: Text(
                '$labeltext',
                style: TextStyle(fontSize: 16),
              ),
              hintText: '$labeltext',
              labelStyle: const TextStyle(
                fontSize: 20,
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ))),
    );
  }
}
