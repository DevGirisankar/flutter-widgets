import 'package:flutter/material.dart';

class ContainerHelper extends StatelessWidget {
  const ContainerHelper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Title(color: Colors.black, child: const Text('Container Helper')),
      ),
      body: Center(
        child: _CustomWidget.container7(),
      ),
    );
  }
}

class _CustomWidget {
  //Basic container

  static Widget container0() {
    return Container(
      color: Colors.amber,
    );
  }

  //Container with height and width

  static Widget container1() {
    return Container(
      height: 100,
      width: 100,
      color: Colors.amber,
    );
  }

  //Container with child and inner padding
  static Widget container2() {
    return Container(
      height: 200,
      width: 200,
      color: Colors.amberAccent,
      padding: const EdgeInsets.all(30),
      child: container1(),
    );
  }

//Container with shadow and radius
  static Widget container3() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black12, spreadRadius: 4, blurRadius: 10),
        ],
      ),
    );
  }

// Container with shadow, radius, with border and child
  static Widget container4(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                spreadRadius: 0.4,
                color: Colors.grey,
                offset: Offset(2, 2),
                blurRadius: 5,
              )
            ]),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.indigo, width: 2)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: const Center(
              child: Text('Hello World', textAlign: TextAlign.center)),
        ),
      ),
    );
  }

// Container with constraints and network image
  static Widget container5() {
    return Container(
      margin: const EdgeInsets.all(20.0),
      constraints: const BoxConstraints(maxWidth: 400.0, minWidth: 200.0),
      width: 50.0,
      alignment: Alignment.center,
      child: Image.network('https://picsum.photos/500/400'),
    );
  }

// Container with tap
  static Widget container6() {
    return Material(
      color: Colors.green,
      child: InkWell(
        splashColor: Colors.blue,
        onTap: () {
          print('tapped');
        },
        child: Container(
          height: 100,
          width: 100,
          child: const Center(
            child: Text('Tap Me!'),
          ),
        ),
      ),
    );
  }

//Container with rounded Image and border
  static Widget container7() {
    return Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.red, width: 3),
          color: Colors.white,
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage('https://picsum.photos/200/300'))),
    );
  }
}
