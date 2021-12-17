import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key,required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _swValue=false;
  void swMethod(value){
    setState(() {
      _swValue=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      // drawer: ,
      // bottomNavigationBar: ,
      // bottomSheet:,
      // floatingActionButton: ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
              value: _swValue, 
              onChanged: swMethod,
              title: const Text('Switch One'),
              subtitle: const Text('subtitle'),
              secondary: const Icon(Icons.person),
              selectedTileColor: Colors.red[100],
              selected: _swValue,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            SwitchListTile(
              value: _swValue, 
              onChanged: swMethod,
              title: const Text('Switch Two'),
              subtitle: const Text('subtitle'),
              secondary:  const Icon(Icons.menu_book),
              selectedTileColor: Colors.red[100],
              selected: _swValue,
              controlAffinity: ListTileControlAffinity.leading,
            ),
            
          ],
        ),
      ),
    );
  }
}