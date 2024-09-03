import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool tf = false; // tf means true false
  void forSwitching(bool value) {
    if (tf) {
      setState(() {
        tf = !tf;
      });
    }else{
      setState(() {
        tf = !tf;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch widget"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Value :$tf",style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold), ),
            Switch(
              splashRadius: 25.0,
              onChanged: forSwitching,
              value: tf,
              activeTrackColor: Colors.red,
              inactiveTrackColor: Colors.blue,
              thumbColor: WidgetStateProperty.all(Colors.blue),
              activeThumbImage: AssetImage("assets/images/images.jpg"),
              thumbIcon: WidgetStateProperty.all(Icon(Icons.access_time)),
            ),
          ],
        ),
      ),
    );
  }
}
