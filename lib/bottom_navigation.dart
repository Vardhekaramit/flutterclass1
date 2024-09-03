import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int selected = 0;
  List<Widget> widgetlist =[
    Text("Alarm", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
    Text("Android", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
    Text("wallet", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom navigation"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.orange,
         iconSize: 41,

         type: BottomNavigationBarType.shifting,
        onTap: (value){
          setState(() {
            selected = value;
          });
        },
        items: const [
         BottomNavigationBarItem(icon: Icon(Icons.access_time),
             label: "Alarm",
             backgroundColor: Colors.blue
         ),
          BottomNavigationBarItem(icon: Icon(Icons.android),
              label: "Android",
              backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),
              label: "Wallet",
              backgroundColor: Colors.green,
          ),

        ],
      ),
      body: Center(
        child: widgetlist[selected],
      ),

    );
  }
}
