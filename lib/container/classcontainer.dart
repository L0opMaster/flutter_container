import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.widthScreen,
  });

  final double widthScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthScreen,
      color: const Color.fromARGB(255, 147, 165, 245),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
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
          ),
        ],
      ),
    );
  }
}