import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: RowColunm(),
    )
  );
}
class RowColunm extends StatelessWidget {
  const RowColunm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Row, Colunm and Image',
          style: GoogleFonts.robotoMono(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          // width: 250,
          // height: 150,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(221, 108, 255, 255),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3)
              )
            ]
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://img.freepik.com/free-photo/closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg?semt=ais_hybrid&w=740&q=80',
                width: 80,
                height: 80,
                ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Flutter Dev',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900
                    ),
                  ),
                  Text(
                    'UI framwork',
                    style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 2, 84, 151)),  
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
