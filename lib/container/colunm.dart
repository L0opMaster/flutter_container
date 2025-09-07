import 'package:flutter/material.dart';
import 'package:flutter_course/container/appcontainer.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: RowUsage(),
  ));
}

class RowUsage extends StatelessWidget {
  const RowUsage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Basic"),
      ),
      body: Column(
        children: [
          // _rowJustifyContentCenter(
          //   alignment: MainAxisAlignment.center
          // ),
          // _rowJustifyContentSpaceAround(),
          // _rowJustifyContentSpaceBetween(),
          _rowJustifyContentStart(),
        ],
      ),
    );
  }

  // SizedBox _rowJustifyContentCenter({
  //   MainAxisAlignment alignment = MainAxisAlignment.center
  // }) {
  //   return SizedBox(
  //     height: 100,
  //     child: Row(
  //       mainAxisAlignment: alignment,
  //       children: [
  //         Icon(
  //           Icons.star,
  //           size: 50,
  //         ),
  //         Text("Row"),
  //         SizedBox(
  //           width: 12,
  //         ),
  //         AppContainer(
  //           width: 30,
  //           height: 20,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  SizedBox _rowJustifyContentStart({
    MainAxisAlignment alignment = MainAxisAlignment.start,
  }) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: alignment,
        children: [
          Icon(
            Icons.star,
            size: 50,
          ),
          Text("Row"),
          SizedBox(
            width: 12,
          ),
          AppContainer(
            100, 12,Colors.black,
          ),
        ],
      ),
    );
  }

  // SizedBox _rowJustifyContentSpaceBetween({
  //   MainAxisAlignment alignment = MainAxisAlignment.spaceBetween
  // }) {
  //   return SizedBox(
  //     height: 100,
  //     child: Row(
  //       mainAxisAlignment: alignment,
  //       children: [
  //         Icon(
  //           Icons.star,
  //           size: 50,
  //         ),
  //         Text("Row"),
  //         SizedBox(
  //           width: 12,
  //         ),
  //         AppContainer(
  //           width: 30,
  //           height: 20,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // SizedBox _rowJustifyContentSpaceAround({
  //   MainAxisAlignment alignment = MainAxisAlignment.spaceAround,
  // }) {
  //   return SizedBox(
  //     height: 100,
  //     child: Row(
  //       mainAxisAlignment: alignment,
  //       children: [
  //         Icon(
  //           Icons.star,
  //           size: 50,
  //         ),
  //         Text("Row"),
  //         SizedBox(
  //           width: 12,
  //         ),
  //         AppContainer(
  //           width: 30,
  //           height: 20,
  //         ),
  //       ],
  //     ),
  //   );
  // }
}