// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/gridView.dart';
import 'package:myapp/listView.dart';
import 'package:myapp/routes.dart';
import 'package:velocity_x/velocity_x.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:605412096.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:993832452.
void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/", 
      routes: {
      "/": (context) => HomePage(),
      MyRoutes.gridRoute: (context) => GridviewPage(),
      MyRoutes.listRoute: (context) => ListViewPage(),
    });
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "List View".text.color(Colors.white).xl3.make(),
        centerTitle: true,
        backgroundColor: Color(0xFFFF5733),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () => Navigator.pushNamed(context, MyRoutes.listRoute),
            title: "List View".text.color(Colors.black).xl3.make(),
            subtitle: "This is a list view".text.color(Colors.black).xl.make(),
            leading: Icon(Icons.list),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, MyRoutes.gridRoute),
            title: "Grid View".text.color(Colors.black).xl3.make(),
            subtitle: "This is a Grid view".text.color(Colors.black).xl.make(),
            leading: Icon(Icons.list),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
