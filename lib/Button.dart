import 'package:flutter/material.dart';
import 'Menu.dart';

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.cyan[500],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        child: Text("Logar",style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),),
        onPressed: () {
         Navigator.push(
          context,
         MaterialPageRoute(builder: (context) => MenuRoute()),
         );
        },
      ),
    );
  }
}