import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(home: ContainerBasicWidget()),
  );
}
class ContainerBasicWidget extends StatelessWidget {
  const ContainerBasicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Basic"),
        centerTitle: true,
        
      ),
      body: Container(
        width: widthScreen,
        color: const Color.fromARGB(255, 147, 165, 245),
        child: Column(
          children: [
            _containerWidget(
              width: 120,
              height: 130
            )
              
            
          ],
        ),
      ),
    );
  }

  Container _containerWidget({
    double  width = 100,
    double height = 100,
  }) {
    return Container(
            width:  width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(
                color: const Color.fromARGB(255, 255, 60, 0),
                style: BorderStyle.solid,
                width: 3
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Center(
              child: Container(
                height: 29,
                width: 122,
                color: Colors.cyanAccent,
                child: Center(
                  child: Text("Container"),
                ) 
              ) 
            )  
          );
  }
}