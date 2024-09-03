
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
class Stack1 extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
            Container(
              color: Colors.orange,
            ),
              Positioned(
                right: 41,
                child: Container(
                 width: 300,
                  height: 300,
                  color: Colors.red,
                          ),
              ),
              Positioned(
                right: 100,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                ),
              ),
               Positioned(
                   
                   child: Text("Hello World ",textDirection: TextDirection.rtl,
                       style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold,color: Colors.red),))
          ],

          ),
        ),
      ),
    );
  }
}