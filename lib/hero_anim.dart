import 'package:classes_and_properties/tween_animation.dart';
import 'package:flutter/material.dart';

class HeroAnim extends StatefulWidget {
  const HeroAnim({super.key});

  @override
  State<HeroAnim> createState() => _HeroAnimState();
}

class _HeroAnimState extends State<HeroAnim> {
  var myopacity = 1.0;
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero anim"),
      ),
    body:
    //InkWell(
      //   onTap: (){
      //     Navigator.push(context, MaterialPageRoute(builder: (context) => TweenAnimation()));
      //   },
      //   child: Hero(
      //     tag: 'background',
      //     child: Image.asset("assets/images/images.jpg"),
      //   ),
      // ),
      Column(
        children: [
          AnimatedOpacity(opacity: myopacity, duration: (Duration(seconds: 2)),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.black,
            ),

            ),
          ElevatedButton(onPressed: (){
            setState(() {
              if(isvisible){
                myopacity = 0.0;
                isvisible = false;
              }else{
                myopacity = 1.0;
                isvisible = true;
              }

            });
          },

              child: Text("Opacity"))

        ],
      )
    );
  }
}
