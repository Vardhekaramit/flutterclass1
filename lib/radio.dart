import 'package:flutter/material.dart';

class Radiobtn extends StatefulWidget {
  const Radiobtn({super.key});

  @override
  State<Radiobtn> createState() => _RadiobtnState();
}

class _RadiobtnState extends State<Radiobtn> {
  String group = "Engineer";
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
            Text("Radio button", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 41),),
            RadioListTile(
              value: "Enginner",
              groupValue: group,
              activeColor: Colors.orange,
              onChanged: (value){
                setState(() {
                  group = value!.toString();
                });
              },
              title: Text("Male"),
              controlAffinity: ListTileControlAffinity.leading,
              secondary: Icon(Icons.male_outlined),

            ),
            RadioListTile(value: "Engineer",
                groupValue: group,
                activeColor: Colors.orange,
                onChanged: (value){
                 setState(() {
                   ///changes of selected or not selected
                 group = value.toString();
               });
                },
              title: Text("Female"),
              secondary: Icon(Icons.female),

                )
          ],
        ),
      ),

    );
  }
}
