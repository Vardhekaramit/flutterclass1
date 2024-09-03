import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(popup());
}

class popup extends StatefulWidget {
  const popup({super.key});

  @override
  State<popup> createState() => _popupState();
}

class _popupState extends State<popup> {
  List item = ["Light theme", "Dark theme"];
  String selected = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("pop up menu"),
      ),
      body: ListView(
        children: [
          Text("Pop up menu button", style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),),
          PopupMenuButton(
              icon: Icon(Icons.lightbulb),
            iconSize: 40,
            onSelected: (value){
              if(value == "Light theme"){
              }else{
              }
            },
              itemBuilder:
              (context) {
              return item.map((e) =>
                        PopupMenuItem(
                            value: e,
                            //this is set in onselected when user click btn
                            child: Text(e, style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),)
                        ),
                    ).toList();

              }
            )

        ],

      ),
    );
  }




}



