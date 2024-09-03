import 'package:flutter/material.dart';

void main(){
  runApp(intrinsic());
}

class intrinsic extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("intrinsic"),
      ),
      body: Center(

        //this widget align maximum height of container
        // child: IntrinsicHeight(
        //   child: Row(
        //     crossAxisAlignment: CrossAxisAlignment.stretch,
        //     children: [
        //       Container(
        //         height: 200, //ignore this height
        //         width: 100,
        //         color: Colors.green,
        //       ),
        //       Container(
        //         height: 100, //ignore this height
        //         width: 100,
        //         color: Colors.blue,
        //       ),
        //       Container(
        //         height: 250,//ignore this height
        //         width: 100,
        //         color: Colors.black,
        //       ),
        //       Container(
        //         height: 350, // this height in all container
        //         width: 100,
        //         color: Colors.amber,
        //       ),
        //     ],
        //   ),
        // ),
        child: SingleChildScrollView(
          child: IntrinsicWidth(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Container(
                       height: 100,
                       width: 100,
                       color: Colors.black,
              ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}