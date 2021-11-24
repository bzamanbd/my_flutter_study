import 'dart:io';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  String filePath='';
  Future<void> checkPermission() async{
if (await Permission.storage.request().isGranted) {
//permission granted
setState(() {
  filePath= '/storage/emulated/0/Download/fish.jpeg';
});
}else{
//request for permission
await Permission.storage.request();
}
}
  @override
  Widget build(BuildContext context) {
    checkPermission();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Network Image'
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
                  child: Image.file(File(filePath)),
                ),
                
              ],
            ),
          ),
        ),
      
      )
    );
  }
}