import 'package:flutter/material.dart';

class SearchTextFeild extends StatefulWidget {
  const SearchTextFeild({super.key});

  @override
  State<SearchTextFeild> createState() => _SearchTextFeildState();
}

class _SearchTextFeildState extends State<SearchTextFeild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: '     Search...',
            suffixIcon: IconButton(icon: Icon(Icons.search), onPressed: () {}),
            contentPadding: EdgeInsets.symmetric(vertical: 10),
            border: OutlineInputBorder()),
      ),
    );
  }
}
