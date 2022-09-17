
import 'package:flutter/material.dart';

class AnimationUI extends StatefulWidget {
  const AnimationUI({Key? key}) : super(key: key);

  @override
  State<AnimationUI> createState() => _AnimationUIState();
}

class _AnimationUIState extends State<AnimationUI> with SingleTickerProviderStateMixin {
 Animation?  colorAnimation ;
 Animation ? sizeAnimation;
 AnimationController?  controller ;

 @override
  void initState(){
   super.initState();
   controller = AnimationController(vsync: this , duration:  Duration(seconds: 2));
 colorAnimation = ColorTween(begin:  Colors.blue  , end: Colors.yellow  ).animate(controller!);
 sizeAnimation =Tween<double>(begin: 100 ,end: 200 ).animate(controller!);
 controller!.addListener(() {
   setState(() {

   });
 });
controller!.repeat();



 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Animation"),

      ),
      body: Center(
        child: Container(
          height: sizeAnimation!.value,
          width:  sizeAnimation!.value,
          color: colorAnimation!.value,

        ),
      ),
    );
  }
}
