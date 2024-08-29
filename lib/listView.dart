import 'package:flutter/material.dart';
import 'package:myapp/resource.dart';
import 'package:velocity_x/velocity_x.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Grid View".text.color(Colors.white).xl3.make(),
        centerTitle: true,
        backgroundColor: Color(0xFFFF5733),
      ),
      body: ListView.builder(
         itemCount: hexColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(int.parse(hexColors[index])),
                ),
                height: 200,
                width: 200,
              ),
            );
          }),
    );
  }
}