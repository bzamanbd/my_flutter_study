import 'package:flutter/material.dart';
class TextFromFld extends StatelessWidget {
  final String labelTxt; final String hintTxt;
  const TextFromFld({Key? key, required this.labelTxt,required this.hintTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border:  const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        labelText: labelTxt,
        hintText: hintTxt,
        labelStyle: const TextStyle(fontSize: 18.0)
      ),
    );
  }
}