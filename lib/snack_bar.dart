import 'package:flutter/material.dart';

class Snackbar extends StatefulWidget {
  const Snackbar({super.key});

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tooltip(
                message: "I am tooltip",
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(11),
                ),
                showDuration: Duration(seconds: 2),
                waitDuration: Duration(seconds: 1),
                child: Text("This is tooltip", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(onPressed: (){
              var snackbar = SnackBar(
                  content: Text("Awasome snack bar"),
                  backgroundColor: Colors.black,
                action: SnackBarAction(label: "Cancel", onPressed: (){

                }),
              );
              ///show snack bar in display
              ScaffoldMessenger.of(context).showSnackBar(snackbar);

            },child: Text("Show snack bar"),),
          ],
        ),
      ),
    );
  }
}
///in snack bar main component content and action in action Snackbaraction is imp