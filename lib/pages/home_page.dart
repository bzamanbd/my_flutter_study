import 'package:flutter/material.dart';
import '../widgets/circle_list_tile_leading.dart';
import '../widgets/styles.dart';
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
final items = List.generate(40, (counter) => '$counter');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView_List.generate'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: ListView.separated(
        separatorBuilder: (context,index)=>const Divider(
          color: Colors.green, thickness: 5.0,
          endIndent: 100,
          height: 5,
          ),
        itemCount: items.length,
        itemBuilder: (content, index){
          return ListTile(
            contentPadding: const EdgeInsets.all(15.0),
            leading:   Leading(Colors.green,items[index],),
            title:   ListTileTitle('Title : ${items[index]}'),
            trailing: const Icon(Icons.menu),
            tileColor: Colors.grey[400],
           );
        }
        ),
    );
  }
}