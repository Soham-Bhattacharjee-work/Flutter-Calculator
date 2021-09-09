import 'package:flutter/material.dart';
class Buttons extends StatelessWidget {
  String text;
  int textSize;
  final Function OnClicked;
  Buttons(
  {
    required this.text,
    required this.textSize,
    required this.OnClicked,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0,10.0),
      child: SizedBox(
        height: 60,
        width: 60,
        child: FlatButton(
          onPressed: ()=>OnClicked(text),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Text(text,style:TextStyle(fontSize: 24),),
          color: Colors.black,
          textColor: Colors.white,
        ),

      ),
    );
  }
}
