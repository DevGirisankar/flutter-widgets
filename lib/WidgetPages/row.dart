import 'package:flutter/material.dart';

class RowHelper extends StatelessWidget {
  const RowHelper({Key? key}) : super(key: key);
  final textStyle = const TextStyle(color: Colors.indigoAccent, fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: row(),
      ),
    );
  }

  // Simple row
  Widget row() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          "Row 1",
          style: textStyle,
        ),
        Text(
          "Row 2",
          style: textStyle,
        ),
        Text(
          "Row 3",
          style: textStyle,
        )
      ],
    );
  }

// row with different widgets
  Widget row1() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          color: Colors.green,
          height: 100.0,
          width: 100.0,
          child: Center(
            child: Text(
              "Row 1",
              style: textStyle,
            ),
          ),
        ),
        Text(
          "Row 2",
          style: textStyle,
        ),
        Container(
          color: Colors.green,
          height: 100.0,
          width: 100.0,
          child: Center(
            child: Text(
              "Row 3",
              style: textStyle,
            ),
          ),
        )
      ],
    );
  }

  // row with axis alignments

  Widget row2() {
    return Row(
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

// row with column
  Widget row3() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text("Row Text 11"),
        const SizedBox(
          height: 20,
        ),
        const Text("Row Text 2"),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Column Text 1"),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 100,
              color: Colors.red,
              child: const Text("Column Text 2"),
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
