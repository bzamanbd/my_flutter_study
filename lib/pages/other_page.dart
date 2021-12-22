import 'package:flutter/material.dart';
class OtherPage extends StatelessWidget {
  final String title;
  const OtherPage({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mapData = ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: Colors.purple[100],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${mapData['name']}',style: const TextStyle(
                fontSize:20.0,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: size.height/50,),
              Text('${mapData['phone']}',style: const TextStyle(
                fontSize:20.0,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                height: size.height / 50,
              ),
              Text('${mapData['address']}',style: const TextStyle(
                fontSize:20.0,
                fontWeight: FontWeight.bold,
              ),),
        
            ],
          ),
        ),
      ),
    );
  }
}