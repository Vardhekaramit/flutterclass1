import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(rich());
}

class rich extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich text"),
      ),
      body: Center(
        child: RichText(
           text: TextSpan(
              style: const TextStyle(fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
              ),
              children: [
                const TextSpan(text: "Hello"),
                TextSpan(text: "World",
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
                    recognizer: TapGestureRecognizer() ..onTap = (){
                        print("Hi flutter");
                }
                ),
                const WidgetSpan(
                    child: Icon(Icons.access_time)
                )

              ],
           ),
      ),
      ),
    );
  }
}