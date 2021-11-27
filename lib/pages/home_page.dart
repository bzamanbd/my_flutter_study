import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HomePage extends StatefulWidget {
     const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  Uint8List? imageData;
  @override
  void initState() {
    super.initState();
    loadAsset();
  }
  Future<void> loadAsset() async {
    Uint8List data = (await rootBundle.load('assets/images/Barn Owl.jpg'))
        .buffer
        .asUint8List();
    // setState(() => imageData = data);
    setState(() {
      imageData=data;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Memory Image'
        ),
        centerTitle:true,
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                SizedBox(
                  width: 400,
                  height: 400,
                  child: Image.memory(imageData!),
                ),
              ],
            ),
          ),
        ),
      
      )
    );
  }
}