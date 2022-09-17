import 'package:flutter/material.dart';

class AnimationOPEx extends StatefulWidget {
  const AnimationOPEx({Key? key}) : super(key: key);

  @override
  State<AnimationOPEx> createState() => _AnimationOPExState();
}

class _AnimationOPExState extends State<AnimationOPEx> {
  double  opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("example"),
      ),
      body:AnimatedContainer(
        duration: Duration(seconds: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(

              style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: const EdgeInsets.all(10),
                  textStyle: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold)), onPressed: () {

              setState(() {
                if(opacity==0){
                  opacity = 1 ;
                }else {
                  opacity = 0;
                }
              });

            }, child: Text("change opacity"),
            ),

            SizedBox(
              height: 20,
            ),
            AnimatedOpacity(opacity: opacity, duration: Duration(seconds: 2)
                ,
              child: Text("Hiden this text" ,style: TextStyle(fontSize: 40),),
            ),
            SizedBox(
              height: 30,
            ),

          ],
        ),
      ),
    );
  }
}
