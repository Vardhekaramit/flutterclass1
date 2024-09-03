import 'package:flutter/material.dart';

class Alertdialog extends StatefulWidget {
  const Alertdialog({super.key});

  @override
  State<Alertdialog> createState() => _AlertdialogState();
}

class _AlertdialogState extends State<Alertdialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alertdialog"),
      ),
      body: ElevatedButton(onPressed: (){
        showDialog(context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text("Are you sure "),
              content: Text("Are you want to subscibe channel"),
              actions: [
                ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                }, child: Text("Okk")),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Cancel"))

              ],
            ));

      },child: Text("Alert", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),),

    );
  }
}
