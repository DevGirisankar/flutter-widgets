import 'package:flutter/material.dart';

class ButtonHelper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: Text('Button Widget'),
        ),
      ),
      floatingActionButton: ButtonWidgets.floatingButton1(),
      body: Center(
        child: ButtonWidgets.textButton(),
      ),
    );
  }
}

class ButtonWidgets {
  // Basic TextButton
  static Widget textButton() {
    return TextButton(
      onPressed: () {
        print('Button action');
      },
      child: const Text('Save'),
    );
  }

  // Basic TextButton with style
  static Widget textButton1() {
    return TextButton(
      onPressed: () {
        print('Button action');
      },
      child: const Text('Save'),
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(const Size(200, 45)),
          padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(horizontal: 20.0)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return Colors.red.withOpacity(0.04);
              }
              if (states.contains(MaterialState.focused) ||
                  states.contains(MaterialState.pressed)) {
                return Colors.red.withOpacity(0.12);
              }
              return null; // Defer to the widget's default.
            },
          )),
    );
  }

  // Basic TextButton with TextButton styleFrom
  static Widget textButton2() {
    return TextButton(
      onPressed: () {
        print('Button action');
      },
      child: const Text('Save'),
      style: TextButton.styleFrom(
          backgroundColor: Colors.amber,
          elevation: 10,
          primary: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          )),
    );
  }

  // Basic TextButton with ElevatedButton  styleFrom
  static Widget textButton3() {
    return TextButton(
      onPressed: () {
        print('Button action');
      },
      child: const Text('Save'), //const Text('Save'),
      style: ElevatedButton.styleFrom(
          onPrimary: Colors.amber,
          elevation: 10,
          primary: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          )),
    );
  }

  // Basic TextButton with icon and text
  static Widget textButton4() {
    return TextButton(
      onPressed: () {
        print('Button action');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ), // outer padding
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.save),
            SizedBox(
              width: 10,
            ), // just to add spacing
            Text('Save'),
          ],
        ),
      ), //const Text('Save'),
      style: ElevatedButton.styleFrom(
          onPrimary: Colors.amber,
          elevation: 10,
          primary: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          )),
    );
  }

// Basic icon button
  static Widget iconButton() {
    return IconButton(
        onPressed: () {
          print('Button action');
        },
        color: Colors.grey,
        iconSize: 30,
        tooltip: 'Share',
        icon: const Icon(Icons.share));
  }

// Basic floating button
  static FloatingActionButton floatingButton() {
    return FloatingActionButton(
      onPressed: () {
        print('Button action');
      },
      backgroundColor: Colors.redAccent,
      foregroundColor: Colors.white,
      child: const Icon(Icons.save),
    );
  }

// Expanded floating button
  static FloatingActionButton floatingButton1() {
    return FloatingActionButton.extended(
      onPressed: () {
        print('Button action');
      },
      label: const Text('Save'),
      icon: const Icon(Icons.save),
    );
  }
}
