import 'package:flutter/material.dart';

void main(){
  runApp(dropdownbtn());
}

class dropdownbtn extends StatefulWidget {
  const dropdownbtn({super.key});

  @override
  State<dropdownbtn> createState() => _dropdownbtnState();
}

class _dropdownbtnState extends State<dropdownbtn> {
  List items = ["Small", "large", "big", "Medium"];
  String selected = "Small";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop down btn"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(

              value: selected,
              items:
                items.map(  // e is a each value get from the items
                (e) => DropdownMenuItem(child: Text(e), value: e,)
              ).toList(),
              onChanged: (val){
                setState(() {
                    selected = val as String;
                  });

          //   DropdownButtonFormField(items:
          //
          //   items.map((e) => DropdownMenuItem
          //     (child: Text(e), value: e,)
          //   ).toList(),
          //       value: selected,
          //       onChanged:(val){
          //     setState(() {
          //         selected = val as String;
          //       },);
          //
             },
          //   icon: Icon(Icons.menu, color: Colors.purple,),
          //
             ),
           ],
        ),
      ),
    );
  }
}
