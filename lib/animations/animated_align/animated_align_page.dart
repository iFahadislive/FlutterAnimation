import 'package:flutter/material.dart';
import 'package:flutter_animation/components/appbar.dart';

class AnimatedAlignPage extends StatefulWidget {
  const AnimatedAlignPage({super.key});

  @override
  State<AnimatedAlignPage> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  int _cockroach = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar('Animated Align Demo'),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: cockroachAnimation(_cockroach+1),
            duration: const Duration(milliseconds: 100),
            child: Container(
                height: 150,
                width: 150,
                color: Colors.transparent,
                child: Image.asset('assets/oggyAndCockroach/cockroach.png')),
          ),
          AnimatedAlign(
            alignment: cockroachAnimation(_cockroach),
            duration: const Duration(milliseconds: 100),
            child: Container(
                height: 150,
                width: 150,
                color: Colors.transparent,
                child: Image.asset('assets/oggyAndCockroach/oggy.png')),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        hoverElevation: 40,
        onPressed: (){
         setState(() {
           _cockroach = _cockroach +1;
         });
        },
        child: const Icon(Icons.animation_outlined, color: Colors.white,),
      ),
    );
  }

  Alignment cockroachAnimation(int alignment) {
    switch (alignment) {
      case 1:
        return Alignment.topLeft;
      case 2:
        return Alignment.topCenter;
      case 3:
        return Alignment.topRight;
      case 4:
        return Alignment.centerLeft;
      case 5:
        return Alignment.center;
      case 6:
        return Alignment.centerRight;
      case 7:
        return Alignment.bottomLeft;
      case 8:
        return Alignment.bottomCenter;
      case 9:
        return Alignment.bottomRight;
      default:
        _cockroach = 0;
        return Alignment.center;
    }
  }
}
