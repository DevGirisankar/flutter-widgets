// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ColumnHelper extends StatelessWidget {
  const ColumnHelper({Key? key}) : super(key: key);
  final textStyle = const TextStyle(color: Colors.indigoAccent, fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: const Text('Column widget'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: column3(),
        ),
      ),
    );
  }

// Simple column
  Widget column() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          "Column 1",
          style: textStyle,
        ),
        Text(
          "Column 2",
          style: textStyle,
        ),
        Text(
          "Column 3",
          style: textStyle,
        )
      ],
    );
  }

// Column with different widgets
  Widget column1() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          color: Colors.green,
          height: 100.0,
          width: 100.0,
          child: Center(
            child: Text(
              "Column 1",
              style: textStyle,
            ),
          ),
        ),
        Text(
          "Column 2",
          style: textStyle,
        ),
        Container(
          color: Colors.green,
          height: 100.0,
          width: 100.0,
          child: Center(
            child: Text(
              "Column 3",
              style: textStyle,
            ),
          ),
        )
      ],
    );
  }

  // Column with axis alignments

  Widget column2() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        const Icon(
          Icons.ac_unit,
          size: 100,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          color: Colors.black,
          width: 100,
          child: Text(
            "Child Two",
            style: textStyle,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          // width: 200,
          color: Colors.amberAccent,
          alignment: Alignment.centerRight,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        )
      ],
    );
  }

  Widget column3() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        const Text("Column Text 1"),
        const SizedBox(
          height: 20,
        ),
        const Text("Column Text 2"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text("Row Text 1"),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 100,
              color: Colors.red,
              child: const Text("Row Text 2"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('data'),
            ),
          ],
        ),
      ],
    );
  }
}
