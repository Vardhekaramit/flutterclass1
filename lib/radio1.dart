import 'package:flutter/material.dart';

class Radio1 extends StatefulWidget {
  const Radio1({super.key});

  @override
  State<Radio1> createState() => _Radio1State();
}

class _Radio1State extends State<Radio1> {
  String group = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selected $group", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
            RadioListTile(
              value: "",
              groupValue: group,
              title: Text("Male"),
              secondary: Icon(Icons.male),

              activeColor: Colors.blue,
              onChanged: (newvalue){
                setState(() {
                  group = newvalue!;
                });

              },

            ),
          ],
        ),
      ),
    );
  }
}
