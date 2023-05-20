import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  CustomMaterialButton(
      {super.key,
      this.buttonName,
      this.color,
      this.elevation,
      this.ontab,
      this.buttontextColor});
  VoidCallback? ontab;
  String? buttonName;
  Color? color;
  double? elevation;
  Color? buttontextColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: elevation,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: color,
      onPressed: ontab,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Text(
          "$buttonName",
          style: TextStyle(color: buttontextColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
