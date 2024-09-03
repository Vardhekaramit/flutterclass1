import 'package:flutter/material.dart';

void main(){
  runApp(button());
}

class button extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.access_time),
      //   backgroundColor: Colors.red,
      //   foregroundColor: Colors.green,
      //
      //   onPressed: (){
      //
      //   },
      // ),
        floatingActionButton: FloatingActionButton.extended( ///in this button we can use label and icon properties
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        onPressed: (){

      }, icon: Icon(Icons.add),
          label: Text("Add")),

      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body:Center(
        child: Column(
          children: [
            TextButton(  // this is replacement of flat button
              onPressed: (){
                },
              child: Text("Flat button", style: TextStyle(fontSize:13, fontWeight: FontWeight.bold ),),
            ),
            ElevatedButton(onPressed: (){

            }, child: Text("Eleveted button", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),),
           IconButton(onPressed: (){


           },
             icon: Icon(Icons.surround_sound),
             iconSize: 20,
             color: Colors.orange,


           )

          ],
        ),
      )
    );
  }
}