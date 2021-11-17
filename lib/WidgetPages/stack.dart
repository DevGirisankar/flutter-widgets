import 'package:flutter/material.dart';

class StackHelper extends StatelessWidget {
  const StackHelper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget'),
      ),
      body: stack(),
    );
  }

  Widget stack() {
    return Stack();
  }
}
