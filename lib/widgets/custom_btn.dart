import 'package:flutter/material.dart';
class CustomBTN extends StatelessWidget {
  final String btnTitle;
  const CustomBTN(this.btnTitle, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child:  Center(child: Text(btnTitle,
      style: const TextStyle(
        fontSize: 20.0
      ),
      )),
    );
  }
}
