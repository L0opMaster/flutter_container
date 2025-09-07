import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: CardIntermedia(),
  ));
}

class CardIntermedia extends StatelessWidget {
  const CardIntermedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intermedia Card'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Card(
                elevation: 12.0,
                color: Colors.amber,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2,
                  )
                ),
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text('Data'),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}