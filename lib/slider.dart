import 'package:flutter/material.dart';

class Slider1 extends StatefulWidget {
  const Slider1({super.key});

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  RangeValues val = RangeValues(0, 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Slider",),
       ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("set sound  : $val",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
           RangeSlider(values: val,
               min: 0,
               max: 50,
               activeColor: Colors.blue,
               divisions: 5,
               labels: RangeLabels(
                 val.start.round().toString(),
                 val.end.round().toString(),
               ),
               onChanged: (RangeValues newvalue){
                   setState(() {
                     val = newvalue;
                   });
               }

           )

          ],
        ),
      ),
    );
  }
}
