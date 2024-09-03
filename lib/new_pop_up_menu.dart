import 'package:flutter/material.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({super.key});

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  List items=  ["item 1", "item2"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pop up menu"),
      ),
      body: Center(
        child: PopupMenuButton(
          icon: Icon(Icons.colorize),
          iconSize: 40,
          iconColor: Colors.orange,
          onSelected: (value) => (value){
            if(value == "item1"){
                
            }else{

            }
          },
          itemBuilder: (context){
            return items.map(
                    (e) =>
                        PopupMenuItem(
                            value: e,
                            child: Text(e,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),) )  ).toList();
          },
        ),
      ),
    );
  }
}
