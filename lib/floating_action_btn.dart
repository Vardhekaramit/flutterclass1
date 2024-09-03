import 'package:flutter/material.dart';

void main(){
  runApp(Float1());
}

class Float1 extends StatelessWidget{

 Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(
       title: Text("floating"),
     ),
     body: Center(
       child: Container(
         child: Text("Floating action button"),
       ),
     ),
     // floatingActionButton: FloatingActionButton(
     //   elevation: 8.0,
     //   child: Icon(Icons.add),
     //   onPressed: (){
     //     print("HI");
     //   },
     //
     // ),
     floatingActionButton: FloatingActionButton.extended(onPressed: (){

     }, label: Text("save"), icon: Icon(Icons.save),),
   );
 }

}