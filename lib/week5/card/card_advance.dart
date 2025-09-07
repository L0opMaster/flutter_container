import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: AdvanceCard(),
    )
  );
}
class AdvanceCard extends StatelessWidget {
  const AdvanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advance Card'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 7, 67, 115),
      ),
      body: Center(
      ),
    );
  }
}