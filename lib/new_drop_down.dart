import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
 static List<String> a = ["item 1", "item 2 ", "item 3"];
  String selected = a[0];
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Drop down btn"),
    //   ),
    //   body: Center(
    //     child: Container(
    //       color: Colors.white,
    //       width: 300,
    //       height: 200,
    //       child: Center(
    //         child: DropdownButton(
    //           icon: Icon(Icons.arrow_drop_down_circle),
    //           iconSize: 40,
    //           iconEnabledColor: Colors.blue,
    //           dropdownColor: Colors.blue,
    //           value: selected,
    //           onChanged: (value){
    //             setState(() {
    //               selected = value.toString();
    //               if(value == a[0]){
    //                 print("item 1");
    //               }else if(value == a[1]){
    //                 print("item 2");
    //               }
    //               else{
    //                 print("item 3");
    //               }
    //             });
    //           },
    //           hint: Text("Select the items"),
    //             items:
    //             a.map((e) =>
    //              DropdownMenuItem(
    //               child: Text(e,
    //                      ),value:e,)
    //           ).toList(),
    //            /// by default selected item first
    //
    //
    //         ),
    //       ),
    //     ),
    //   ),
    // );







    return Scaffold(
      appBar: AppBar(
        title: Text("Drop down"),
      ),
    //   body: PopupMenuButton(
    //     // onSelected: (value) {
    //     //   value = selected;
    //     // },
    //       onCanceled: () {
    //         print("You have not selected");
    //       },
    //       onOpened: (){
    //
    //         },
    //     itemBuilder: (context){
    //     return a.map(
    //         (e) => PopupMenuItem(
    //             value: e,
    //             child: Text(e, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21))
    //   ),
    // ).toList();
    //     }
    // ),

      // body: Center(
      //   child: Container(
      //     width: 500,
      //     height: 200,
      //     color: Colors.blue,
      //     child: Center(
      //       child: DropdownButton(
      //
      //           icon: Icon(Icons.arrow_drop_down_circle_outlined),
      //           iconEnabledColor: Colors.red,
      //           iconSize: 21,
      //           value: selected,
      //           items: a.map(
      //                   (e) => DropdownMenuItem(
      //                     child: Text(e,style: TextStyle(fontSize:31 ),),value: e,)).toList(),
      //           onChanged: (value){
      //             setState(() {
      //               selected = value.toString();
      //               if(value == a[0]){
      //                 print("First item");
      //               }else if(value == a[1]){
      //                 print("Second item");
      //               }else{
      //                 print("Third item");
      //               }
      //             });
      //           }),
      //     ),
      //   ),
      // ),

    //   body: Center(
    //     child: Container(
    //       width: 500,
    //       height: 200,
    //       child: Center(
    //         child: DropdownButton(
    //           onChanged: (newvalue){
    //             setState(() {
    //               selected = newvalue.toString();
    //             });
    //           },
    //           value: selected,
    //           items: a.map(
    //               (e) => DropdownMenuItem(
    //                   child:
    //                   Text(e,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),value: e, )).toList(),
    //         ),
    //       ),
    //     ),
       body: Center(

         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             PopupMenuButton(

               onSelected: (value){
                 setState(() {
                   value = selected;
                 });
               },
               ///onCanceled: (){
                 ///print("you have does not select value");
               ///}
               itemBuilder: (context){
                 return a.map(
                         (e) => PopupMenuItem(
                             child:
                             Text(e, style: TextStyle(fontSize: 21),),)).toList();

               },
             ),

           ],
         ),
       ),
     );

  }
}
