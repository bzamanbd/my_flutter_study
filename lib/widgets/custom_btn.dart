import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget customBNT(){
return InkWell(
  onTap: (){
    // print('clicked');
  },
  child: Container(
    width: 250,
    height: 60,
    decoration: const BoxDecoration(
      color: Colors.grey,
    ),
    child: const Center(child: Text('Button',
    style: TextStyle(
      fontSize: 20
    ),
    )),
  )
  );
}