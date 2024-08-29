import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class GridviewPage extends StatefulWidget {
  const GridviewPage({super.key});

  @override
  State<GridviewPage> createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {
  
  List<String> hexColors = [
  "0xFFFF5733", "0xFF33FF57", "0xFF3357FF", "0xFFF1C40F", "0xFF8E44AD", // 1-5
  "0xFF16A085", "0xFF2980B9", "0xFFE74C3C", "0xFF2ECC71", "0xFFE67E22", // 6-10
  // Add more color codes here...
  "0xFFDFFF00", "0xFFFFBF00", "0xFFFF7F50", "0xFFDE3163", "0xFF9FE2BF", // 996-1000
  // Additional 50 color codes
  "0xFF00FFFF", "0xFFFF00FF", "0xFFFFA500", "0xFF800080", "0xFF808000", // 1001-1005
  "0xFF000080", "0xFF800000", "0xFF008000", "0xFF008080", "0xFF0000FF", // 1006-1010
  "0xFFFF0000", "0xFF00FF00", "0xFFFFFF00", "0xFF000000", "0xFFFFFFFF", // 1011-1015
  "0xFF7F7F7F", "0xFFBFBFBF", "0xFFDFDFDF", "0xFFFF7F7F", "0xFF7FFF7F", // 1016-1020
  "0xFF7F7FFF", "0xFFBFBFFF", "0xFFFFBFBF", "0xFFBFFF7F", "0xFF7FFFFF", // 1021-1025
  "0xFFBF7FFF", "0xFFFF7FBF", "0xFFBFDF7F", "0xFF7FDFBF", "0xFFDFBF7F", // 1026-1030
  "0xFF7FBFDF", "0xFFDF7FBF", "0xFFBFFFBF", "0xFF7FBFBF", "0xFFBFBF7F", // 1031-1035
  "0xFF7F7FBF", "0xFFBFBFBF", "0xFFD7D7D7", "0xFF3F3F3F", "0xFFDF3F3F", // 1036-1040
  "0xFF3FDF3F", "0xFF3F3FDF", "0xFFDFDF3F", "0xFF3FDFDF", "0xFFDF3FDF", // 1041-1045
  "0xFF3F3F3F", "0xFFBFBF3F", "0xFFDF7F3F", "0xFF3F7FDF", "0xFF7F3FDF", // 1046-1050
];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Grid View".text.color(Colors.white).xl3.make(),
        centerTitle: true,
        backgroundColor: Color(0xFFFF5733),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
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