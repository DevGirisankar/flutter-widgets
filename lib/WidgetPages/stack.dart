import 'package:flutter/material.dart';

class StackHelper extends StatelessWidget {
  const StackHelper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget'),
      ),
      body: Center(
        child: stack(),
      ),
    );
  }

  Widget stack() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 200.0,
          width: 200.0,
          color: Colors.black,
        ),
        Container(
          height: 150.0,
          width: 150.0,
          color: Colors.grey,
        ),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.blueGrey,
        )
      ],
    );
  }

  Widget stack1() {
    return Stack(
      children: <Widget>[
        Container(
          height: 200.0,
          width: 200.0,
          color: Colors.black,
        ),
        Container(
          height: 150.0,
          width: 150.0,
          color: Colors.grey,
        ),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.blueGrey,
        )
      ],
    );
  }

  Widget stack2() {
    return SizedBox(
      height: 400.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: 300.0,
              width: 300.0,
              color: Colors.grey,
            ),
            Positioned(
              top: 0.0,
              bottom: 0.0,
              child: Container(
                height: 250.0,
                width: 250.0,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget stack3() {
    return SizedBox(
      height: 400,
      width: 400,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 300.0,
            width: 300.0,
            color: Colors.grey,
          ),
          Positioned(
            left: 45,
            top: 50,
            child: Container(
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            ),
          ),
          Positioned(
            right: 45,
            top: 50,
            child: Container(
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            ),
          ),
          Positioned(
            right: 45,
            bottom: 50,
            child: Container(
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            ),
          ),
          Positioned(
            left: 45,
            bottom: 50,
            child: Container(
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            ),
          ),
          Positioned(
            child: Container(
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
