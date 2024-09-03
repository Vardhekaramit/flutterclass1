import 'dart:ffi';

import 'package:flutter/material.dart';


class textfield extends StatefulWidget {
  const textfield({super.key});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  // TextEditingController username = TextEditingController();
  // TextEditingController pass  =  TextEditingController();
  String name = "";
  String password  = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text field"),
      ),
      body:Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                maxLength: 6  ,  //maximum number of character insert
                //controller: username,  //second method
                onChanged: (text){     // first method
                  name = text;
                },

                decoration: InputDecoration(
                  hintText: "Enter Username",
                    prefixIcon: Icon(Icons.supervised_user_circle),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(21),
                   borderSide: const BorderSide(
                     color: Colors.red
                   )
                 ) ,
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(21),
                   borderSide: const BorderSide(
                     color: Colors.blue,
                   ),
                 )
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              TextField(
                obscureText: true, // not readable or understable easily
               // maxLines: 2,     //it is have more than one line
                 maxLength: 6,
                //controller: pass,
                onChanged: (Int){
                  password = Int ;
                },
                decoration: InputDecoration(
                    hintText: "Enter password",
                    prefixIcon: Icon(Icons.password_rounded),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: const BorderSide(
                            color: Colors.red
                        )
                    ) ,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 11,
              ),
              ElevatedButton(onPressed: (){

              }, child: Text("Login") )

            ],
          ),
        ),
      ),
    );
  }
}
