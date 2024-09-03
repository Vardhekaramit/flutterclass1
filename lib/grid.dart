import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view"),
      ),
     //   body: //Container(
      //   height: 200,
      //   child: Column(
      //     children: [
      //       GridView.count( crossAxisCount: 3,
      //         crossAxisSpacing: 20,
      //         mainAxisSpacing: 11,
      //         children: [
      //           Container(
      //             color: Colors.black,
      //           ),
      //           Container(
      //             color: Colors.orange,
      //           ),
      //           Container(
      //             color: Colors.black,
      //           ),
      //           Container(
      //             color: Colors.black,
      //           ),
      //           Container(
      //             color: Colors.black,
      //           ),
      //         ],
      //       ),
      //       SizedBox(
      //         height: 100,
      //       ),


            ///devide into a width vise
            // Container(
            //   height: 200,
            //   child: GridView.extent(maxCrossAxisExtent: 100,mainAxisSpacing: 20,crossAxisSpacing: 20,
            //   children: [
            //     Container(
            //       color: Colors.black,
            //     ),
            //     Container(
            //       color: Colors.orange,
            //     ),
            //     Container(
            //       color: Colors.black,
            //     ),
            //     Container(
            //       color: Colors.black,
            //     ),
            //     Container(
            //       color: Colors.black,
            //     ),
            //   ],
            //   ),
            //)
          //],
        );
     // ),
    //);
  }
}
