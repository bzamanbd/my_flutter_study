import 'package:flutter/material.dart';
class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red[300],
      child: const Center(
        child: Text('This is TabBarView One'),
      ),
    );
  }
}