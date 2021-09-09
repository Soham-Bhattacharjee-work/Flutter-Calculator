import 'package:flutter/material.dart';

class Buttonsoperator extends StatelessWidget {
  final String text;
  final Function OnClicked;
  const Buttonsoperator({Key? key,
    required this.text,
    required this.OnClicked,
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
      child: SizedBox(
        height: 60,
        width: 60,
        child: FlatButton(
          onPressed: () => OnClicked(text),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Text(
            text,
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.orange[300],
          textColor: Colors.white,
        ),
      ),
    );
  }
}
