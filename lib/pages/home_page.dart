import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count =0;
  
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Button'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: width/1.3,
          height: height/2,
          decoration: const BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             RichText(text: TextSpan(
               children: <TextSpan>[
                 const TextSpan(text: 'Current value : ', style: TextStyle(fontSize: 20.0)),
                 TextSpan(text: '$count', style: const TextStyle( fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple)),
               ]
             )),
              SizedBox(
                height: height/40,
              ),
              IconButton(
                onPressed: (){
                  setState(() {
                    count++;
                  });
                }, 
                icon:  const Icon(Icons.volume_up,
                size: 40,
                color: Colors.purple,
                ),
                
                )
            ],
          ),
        ),
      )
    );
  }
}