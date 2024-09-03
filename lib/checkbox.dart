import 'package:flutter/material.dart';

class Checkbox1 extends StatefulWidget {
  const Checkbox1({super.key});

  @override
  State<Checkbox1> createState() => _Checkbox1State();
}

class _Checkbox1State extends State<Checkbox1> {
  bool app  =  false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check  box"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Choose one ", style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),),
          CheckboxListTile(value: app,
              title: Text("App developer"),
              onChanged: (value){
                 setState(() {
                   app = value!;
                 });
              },
            activeColor: Colors.orange,
            subtitle: Text("This is mobile development"),
            /// start check box in leading
            controlAffinity: ListTileControlAffinity.leading,
             secondary: Icon(Icons.android),
          )
         ],
        ),
      )
    );
  }
}
