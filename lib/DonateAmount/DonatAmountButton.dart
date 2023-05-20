import '''
package:flutter/material.dart''';

class DonateAmountButton extends StatelessWidget {
  DonateAmountButton({super.key, this.title, this.ontab, this.sufix});
  VoidCallback? ontab;
  String? title;
  Widget? sufix;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: ontab,
      child: Text('$title'),
    );
  }
}
