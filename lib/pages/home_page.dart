import 'package:flutter/material.dart';
import '/pages/page_one.dart';
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key,required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      // bottomNavigationBar: ,
      // bottomSheet: ,
      // floatingActionButton: ,
      drawer:ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(0), bottomRight: Radius.circular(300)),
        child: Drawer(
          backgroundColor: Colors.orange[80],
          elevation: 10.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                color: Colors.green,
                ),
                accountName: const Text('New User',style: TextStyle(color: Colors.black,fontSize: 18.0),), 
                accountEmail: const Text('nextuser@gmail.com',style: TextStyle(color: Colors.black),),
                currentAccountPicture:ClipRRect(
                  borderRadius:const BorderRadius.all(Radius.circular(5.0)),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white
                    ),
                    child: const Image(image: AssetImage('assets/images/Logo.png')),
                  ),
                ),
                arrowColor: Colors.red,
                currentAccountPictureSize: const Size(80, 80),
              ),
              ListTile(
                leading: const Icon(Icons.menu_book),
                title: const Text('First Page'),
                trailing: const Icon(Icons.arrow_drop_down),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (cnt)=>const PageOne(title: 'Page One')));
                },
              )
              
            ],
          ),
        ),
      ),
    );
  }
}