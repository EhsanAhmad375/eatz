import 'package:flutter/material.dart';
// import 'package:new_stars/Constants.dart';

class PasswordTextFeild extends StatefulWidget {
  final TextEditingController controller;
  final String labeltext;
  final bool isObscure = false;

  PasswordTextFeild({
    Key? key,
    required this.controller,
    required this.labeltext,
    // this.isObs
  }) : super(key: key);
  bool isVisible = false;

  @override
  State<PasswordTextFeild> createState() => _PasswordTextFeildState();
}

class _PasswordTextFeildState extends State<PasswordTextFeild> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 10,
        child: TextFormField(
          obscureText: isVisible,
          controller: widget.controller,
          decoration: InputDecoration(
              focusColor: Colors.white,
              fillColor: Colors.white,
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              hintText: '${widget.labeltext}',
              label: Text(
                '${widget.labeltext}',
                style: TextStyle(fontSize: 16),
              ),
              labelStyle: const TextStyle(
                fontSize: 20,
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: isVisible
                      ? Icon(
                          Icons.visibility,
                          color: Colors.black,
                        )
                      : Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ))),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            if (!regex.hasMatch(value)) {
              return 'Password must be at least 8 characters long, with at least one uppercase letter, one lowercase letter, one number, and one special character';
            }
            return null;
          },
        ));
  }

  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
}
