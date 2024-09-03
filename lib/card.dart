import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  const Card1({super.key});

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(21),
            ),
            elevation: 10,
            color: Colors.red,
            child: Column(
              children: [
                Text("HEllo",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                Text("Hii", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
              ],
      
            ),
          ),
        ),
      ),
    );
  }
}
