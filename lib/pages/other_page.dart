import 'package:flutter/material.dart';
import 'package:my_flutter_study/widgets/custom_btn.dart';
class OtherPage extends StatefulWidget {
  const OtherPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  String backData='Flutter';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Navigator.of(context).pop(backData);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomBTN(
                btnText: 'goBack', 
                onPressed: (){
                  Navigator.of(context).pop(backData);
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}