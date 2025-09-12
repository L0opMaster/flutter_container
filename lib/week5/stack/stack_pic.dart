import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: StackSample(),
  ));
}
class StackSample extends StatelessWidget {
  final bool showBlurChip;
  final String title;
  const StackSample({super.key, this.showBlurChip = false, this.title = "title"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data"),
      ),
      body: Center(
          child: Card(
            clipBehavior: Clip.antiAlias,
              child: _buildStack(),
            )
      ),
    );
  }
}
Widget _buildStack(){
  return SizedBox(
    height: 200,
    width: 380,
    child: Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              // gradient: LinearGradient(
              //   // colors: [Color(0xff4494fd), Color(0xff3f5efb)],
              //   stops: [0.25, 0.75],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // )
            ),
            child: Image.network('https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',width: double.infinity,fit: BoxFit.cover,),
          )
        ),
        Positioned(
          right: -18,
          top: -12,
          child: Container(
            width: 52,
            height: 52,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.amber[800],
              shape: BoxShape.circle,
            ),
            child: Text('⭐',style: TextStyle(color: Colors.white),),
          ),
        ),
        Positioned(
          bottom: -35,
          left: -35,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Color(0x66FFFFFF),
              shape: BoxShape.circle,
            ),
          )
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text('Featured Card',style: TextStyle(fontSize: 17,color: Colors.white),),
          )
        ),
        Positioned(
          bottom: 15,
          left: 30,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Color(0x66FFFFFF),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text('Glass Effect',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),),
          )
        )
      ],
    ),
  );
}