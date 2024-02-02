import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimateScreen extends StatefulWidget {
  
  static const name = 'animated_screen';

  const AnimateScreen({super.key});

  @override
  State<AnimateScreen> createState() => _AnimateScreenState();
}

class _AnimateScreenState extends State<AnimateScreen> {

  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10.0;

  void changeShape(){

    final random = Random();

    width = random.nextInt(300) + 25;
    height = random.nextInt(550) + 25;
    borderRadius = random.nextInt(75) + 0;

    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255), 
      1
    );

    setState(() {});

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),

      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1300),
          curve: Curves.elasticInOut,
          width: width <= 0 ? 0 : width,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius <= 0 ? 0 : borderRadius)
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed:changeShape, // onPressed:() => changeShape(),
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
