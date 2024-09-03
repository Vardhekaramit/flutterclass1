import 'package:flutter/material.dart';

void main(){
  runApp(inkwell());
}

class inkwell extends StatefulWidget{
  @override
  State<inkwell> createState() => _inkwellState();
}

class _inkwellState extends State<inkwell> {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Inkwell"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){   ///whenever use tap in Container this function called
            print("Inkwell");
          },
          onDoubleTap: (){    ///whenever user tap two time this function called
            print("Double tap");
          },
          onTapCancel: (){    //
            print("Cancel");
          },
          
          child: Container(
            color: Colors.orange,
            width: 200,
            height: 300,
          ),
        ),
      ),
    );
  }
}

