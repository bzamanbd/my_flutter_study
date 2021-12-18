import 'package:flutter/material.dart';
class CustomBTN extends StatelessWidget {
  final String btnText;
  final dynamic onPressed; 
  const CustomBTN({Key? key,required this.btnText, required this.onPressed,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: size.height / 10,
        width: size.width / 1.5,
        decoration: const BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.all(Radius.circular(50.0))
        ),
        child: MaterialButton(
          onPressed: onPressed,
          child: Text(btnText,
          style: const TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}