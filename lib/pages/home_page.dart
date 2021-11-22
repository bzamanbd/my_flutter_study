import 'package:flutter/material.dart';
import '../widgets/styles.dart';
import '../widgets/rect_container.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[300],
      // drawer: ,
      // bottomNavigationBar: ,
      // bottomSheet: ,
      // floatingActionButton: ,
      body: Center(
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
             ListTile(
              contentPadding: const EdgeInsets.all(15.0),
              leading: const RectContainer(Colors.green,'1st',),
              title: const ListTileTitle('First Title'),
              trailing: const Icon(Icons.menu),
              tileColor: Colors.grey[400],
            ),
            const SizedBox(
              height: 20,
              // width: 20,
            ),
             ListTile(
              contentPadding: const EdgeInsets.all(15.0),
              leading: const RectContainer(Colors.red,'2nd'),
              title: const ListTileTitle('Second Title'),
              trailing: const Icon(Icons.menu),
              tileColor: Colors.grey[400],
            ),
            const SizedBox(
              height: 20,
              // width: 20,
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(15.0),
              leading: const RectContainer(Colors.blue,'3rd'),
              title: const ListTileTitle('Third Title'),
              trailing: const Icon(Icons.menu),
              tileColor: Colors.grey[400],
            ),
            const SizedBox(
              height: 20,
              // width: 20,
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(15.0),
              leading:RectContainer(Colors.red,'4th'),
              title: ListTileTitle('Forth Title'),
              trailing: Icon(Icons.menu),
              tileColor: Colors.grey[400],
            ),
            const SizedBox(
              height: 20,
              // width: 20,
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(15.0),
              leading: const RectContainer(Colors.green,'5th'),
              title: const ListTileTitle('Fifth Title'),
              trailing: const Icon(Icons.menu),
              tileColor: Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }
}
