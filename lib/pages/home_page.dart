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
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (content, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                contentPadding: const EdgeInsets.all(15.0),
                leading:   Leading(Colors.green,items[index],),
                title:   ListTileTitle('Title : ${items[index]}'),
                trailing: const Icon(Icons.menu),
                tileColor: Colors.grey[400],
               ),
            );
          }
          ),
      ),
    );
  }
}