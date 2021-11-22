import 'package:flutter/material.dart';
import '../widgets/styles.dart';
import '../widgets/circle_list_tile_leading.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List <int> list=[];
  @override
  void initState(){
    for(int i=0; i<=30; i++){
      list.add(i);
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListViewBuilder'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext cnt, int index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                contentPadding: const EdgeInsets.all(15.0),
                leading: Leading(Colors.green,'${list[index]}',),
                title:  ListTileTitle('Title ${list[index]}'),
                trailing: const Icon(Icons.menu),
                tileColor: Colors.grey[400],
               ),
            );
          },
          ),
      ),
    );
  }
}