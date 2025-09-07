import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: CardWidget(),));
}
class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Basic'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.blueAccent,
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text('Data'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}