import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget {
  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: const AnimatedContainerExample(),
    );
  }
}

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.orange : Colors.pink,
          alignment: selected ? Alignment.center : Alignment.topCenter,
          duration: const Duration(seconds: 3),
          curve: Curves.fastEaseInToSlowEaseOut,
          child: const FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
