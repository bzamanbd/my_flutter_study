import 'package:flutter/material.dart';
import '/pages/page_one.dart';
import '/pages/page_two.dart';
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key,required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('assets/images/Logo.png',),
                  // height: 100,
                  // width: 100,
                  alignment: Alignment.center,
                  ),
                  SizedBox(height: size.height / 300,),
                  const Text('My Cat',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.black
                  ),
                  ),
                  const Text('user@gmial.com',
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                  )
                ],
              )
              ),
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text('Page One'),
              trailing: const Icon(Icons.arrow_right),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (cntx)=>const PageOne(title: 'PageOne')));
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text('Page Two'),
              trailing: const Icon(Icons.arrow_right),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (cnt)=> const PageTwo(title:'Page Two')));
              },

            ),
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text('Page Three'),
              trailing: const Icon(Icons.arrow_right),
              onTap: (){},
            ),

          ],
        ),
      ),
    );
  }
}