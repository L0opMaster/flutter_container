import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
 runApp(MaterialApp(home: ImageLayout()));
}
class ImageLayout extends StatelessWidget {
  const ImageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 251, 92, 0),
        centerTitle: true,
        title: Text('Row, Colunm and Image',style: GoogleFonts.anuphan(color: Colors.white, fontSize: 20),),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 144, 143, 143),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 5)
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://cdn.pixabay.com/photo/2023/12/11/12/51/lynx-8443540_960_720.jpg',
                width: 80,
                height: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Flutter Dev', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w900)),
                  Text('UI Framwork', style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic, fontWeight: FontWeight.w400))
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}