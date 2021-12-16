import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key,required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _groupValue=0;
  void rmethod(value){
    setState(() {
      _groupValue=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
        style: const TextStyle(
          fontSize: 24.0
        ),
        ),
        centerTitle: true,
      ),
      // drawer: ,
      // bottomNavigationBar: ,
      // bottomSheet: ,
      // floatingActionButton: ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
              value: 1, 
              groupValue: _groupValue, 
              onChanged: rmethod,
              title: const Text('Dhaka'),
              selected: true,
              selectedTileColor: Colors.green[300],

            ),
            RadioListTile(
              value: 2, 
              groupValue: _groupValue, 
              onChanged: rmethod,
              title: const Text('Khulna'),
            ),
            RadioListTile(
              value: 3, 
              groupValue: _groupValue, 
              onChanged: rmethod,
              title: const Text('Barishal'),
            ),
            RadioListTile(
              value: 4, 
              groupValue: _groupValue, 
              onChanged: rmethod,
              title: const Text('Rajshahi'),
              selected: _groupValue==4?true:false,
            ),
            RadioListTile(
              value: 5, 
              groupValue: _groupValue, 
              onChanged: rmethod,
              title: const Text('Rangpur'),
              secondary: const Icon(Icons.menu_book),
              selected: _groupValue==5?true:false,
            ),
            RadioListTile(
              value: 6, 
              groupValue: _groupValue, 
              onChanged: rmethod,
              title: const Text('Comilla',style: TextStyle(fontSize: 20),),
              activeColor: Colors.red,
              tileColor: Colors.grey[300],
              secondary: const Icon(Icons.favorite),
              controlAffinity: ListTileControlAffinity.trailing,
              selected: _groupValue==6?true:false,
            ),
          ],
        ),
      ),
    );
  }
}