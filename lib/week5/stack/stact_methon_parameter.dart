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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
                child: _buildStack(),
          )
      ),
    );
  }
}
Widget _buildStack(){
  return SizedBox(
    height: 200,
    child: Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 8.0,
      child: Stack(
        children: [
          _backgroundImage(),
          _starPo(),
          _cercle(),
          _textFeatured(),
          _textGlass()
        ],
      ),
    )
  );
}

Positioned _cercle() {
  return Positioned(
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
        );
}

Positioned _textGlass() {
  return Positioned(
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
        );
}

Positioned _textFeatured() {
  return Positioned(
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
        );
}

Positioned _starPo() {
  return Positioned(
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
        );
}

Positioned _backgroundImage({bool isShowerImage = true, String imageURL = "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"}) {
  return Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [Color(0xff4494fd), Color(0xff3f5efb)],
                stops: [0.25, 0.75],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            ),
            child: isShowerImage ? Image.network(width: double.infinity,fit: BoxFit.cover,imageURL):null,
          )
        );
}