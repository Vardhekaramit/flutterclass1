import 'package:flutter/material.dart';

void main(){
  runApp(Drawer1());
}

class Drawer1 extends StatefulWidget{
  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("drawer"),
      ),
       drawer:  Drawer(
         child: ListView(
           children: const [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text("Welcome to drawer")),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Name"),
            ),
            ListTile(
               leading: Icon(Icons.phone),
              title: Text("Phone number"),
            ),
          ],
        ),

        ),




    );
  }
}