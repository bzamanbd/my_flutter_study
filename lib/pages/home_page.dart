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
        borderRadius: BorderRadius.only(topRight: Radius.circular(0), bottomRight: Radius.circular(300)),
        child: Drawer(
          backgroundColor: Colors.orange[80],
          elevation: 10.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                color: Colors.green,
                ),
                accountName: Text('New User',style: TextStyle(color: Colors.black,fontSize: 18.0),), 
                accountEmail: const Text('nextuser@gmail.com',style: TextStyle(color: Colors.black),),
                currentAccountPicture:ClipRRect(
                  borderRadius:const BorderRadius.all(Radius.circular(5.0)),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Image(image: AssetImage('assets/images/Logo.png')),
                  ),
                ),
                arrowColor: Colors.red,
                currentAccountPictureSize: Size(80, 80),
              ),
              ListTile(
                leading: Icon(Icons.menu_book),
                title: Text('First Page'),
                trailing: Icon(Icons.arrow_drop_down),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (cnt)=>PageOne(title: 'Page One')));
                },
              )
              
            ],
          ),
        ),
      ),
    );
  }
}