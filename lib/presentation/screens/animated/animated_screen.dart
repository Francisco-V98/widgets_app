import 'package:flutter/material.dart';

class AnimateScreen extends StatelessWidget {
  
  static const name = 'animated_screen';

  const AnimateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),

      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: 300,
          height: 230,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20)
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed:() {
        
        },
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
