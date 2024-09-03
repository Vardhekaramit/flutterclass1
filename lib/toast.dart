import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toast1 extends StatefulWidget {
  const Toast1({super.key});

  @override
  State<Toast1> createState() => _Toast1State();
}

class _Toast1State extends State<Toast1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              Fluttertoast.showToast(msg: "This is demo toast",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.red,
                textColor: Colors.orange,
              );
            },
            child: Text("For toast"),
          ),

        ],
      ),


    );
  }
}
