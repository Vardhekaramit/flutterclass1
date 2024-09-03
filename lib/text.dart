import 'package:flutter/material.dart';

void main(){
  runApp(text());
}

class text extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: const Center(
        child: Text(
            textAlign: TextAlign.end,
            textScaler: TextScaler.linear(1.5),///this is use for textsize is larger than 50%
            "ABCDEFGH", style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 31,
          wordSpacing: 10,
          letterSpacing: 8,
          backgroundColor: Colors.orange,

        ),


        ),

      ),
    );
  }
}