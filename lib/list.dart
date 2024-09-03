import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  var list = ["one", "two", "three", "four"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view"),
      ),
      // body: ListView.builder(
      //   itemCount: list.length,
      //   itemExtent: 100,
      //   itemBuilder: (context, index){
      //     return Text(list[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),);
      //   },
      body: ListView.separated(itemBuilder: (context, index){
              return Text(list[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),);
      },
          separatorBuilder: (context, index){
                 return Divider(height: 100,thickness: 4,);
          }, itemCount: list.length) ,

    );
  }
}
