import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> with SingleTickerProviderStateMixin{
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
    
    animationController.addListener((){
      setState(() {

      });
    });
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
      ),
      body: Center(
       child:  Hero(
         tag: 'background',
         child: Container(
                color: Colors.blue,
                width: animation.value,
                height: animation.value,
              ),
       ),
      ),
    );
  }
}
