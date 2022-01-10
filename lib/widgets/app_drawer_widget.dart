import 'package:flutter/material.dart';
class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  [
          const UserAccountsDrawerHeader(
            accountName: Text('User Name'), 
            accountEmail: Text('username@email'),
            currentAccountPicture: CircleAvatar(
              child: Text('user pic'),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.shop_sharp),
            title: Text('Shop'),
            trailing: Icon(Icons.arrow_right),
            // onTap: ()=>Navigator.of(context).pushNamed('foodlist-screen'),
          ),
          
          const ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Orders'),
            trailing: Icon(Icons.arrow_right),
            // onTap: ()=>Navigator.of(context).pushNamed(routeName),
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Manage Food'),
            trailing: const Icon(Icons.arrow_right),
            onTap: () => Navigator.of(context).pushNamed('/foodlist-screen'),
          ),

        ],
      ),
    );
  }
}