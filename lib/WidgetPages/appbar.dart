import 'dart:ui';

import 'package:flutter/material.dart';

class AppbarHelper extends StatelessWidget {
  const AppbarHelper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar1(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('AppBar Widget'),
    );
  }

  AppBar appBar1() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: const Text('AppBar Widget'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.search,
          ),
          onPressed: () {},
        )
      ],
    );
  }

  AppBar appBar2() {
    return AppBar(
      backgroundColor: Colors.red,
      title: const Text(
        "AppBar Widget",
      ),
      elevation: 4.0,
      centerTitle: false,
    );
  }

  AppBar appBar3() {
    return AppBar(
      centerTitle: true,
      title: const Text('AppBar Widget'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.access_alarms),
          onPressed: () {
            print('search action');
          },
        ),
        IconButton(
          icon: const Icon(Icons.deck),
          onPressed: () {
            print('add action');
          },
        ),
      ],
    );
  }

  AppBar appBar4() {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      title: const Text(
        'AppBar Widget',
        style: TextStyle(
          color: Colors.amberAccent,
          fontSize: 20.0,
        ),
      ),
      actions: <Widget>[
        IconButton(
          color: Colors.amberAccent,
          icon: const Icon(Icons.add),
          iconSize: 30,
          onPressed: () {
            print('add action');
          },
        ),
      ],
    );
  }

  AppBar appBar5() {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'AppBar Widget',
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            "subtitle",
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.add_photo_alternate),
          onPressed: () {
            print('add action');
          },
        )
      ],
    );
  }

  AppBar appBar6() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.green,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_downward),
            color: Colors.black,
            onPressed: () {
              print('add action');
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'AppBar Widget',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar7() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.green,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextButton(
            child: Image.network(
              // this is just for fun :p
              'https://picsum.photos/500/400',
              fit: BoxFit.fill,
              width: 100,
              height: 30,
            ),
            onPressed: () {
              print('add action');
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'AppBar Widget',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
