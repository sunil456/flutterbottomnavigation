import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {

  AlertDialog dialog = new AlertDialog(
    content: new Text(
      "Dialog is Up..",
      style: new TextStyle(fontSize: 32),
    ),
    title: new Text("Hello"),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: new RaisedButton(

          child: new Text(
            "Click Me",
            style: new TextStyle(color: Colors.white),
          ),
          color: Colors.orangeAccent,
//          onPressed: ()=> Scaffold.of(context).showSnackBar(
//
//              new SnackBar(
//                content: new Text("You Clicked Me"),
//                duration: new Duration(seconds: 3),
//              )
//
//          ),

        onPressed: ()=> showDialog(
          context: context,
          child: dialog
        ),

        ),

      ),

    );
  }
}
