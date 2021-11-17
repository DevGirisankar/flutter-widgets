import 'package:flutter/material.dart';
import 'package:flutter_widgets/WidgetPages/column.dart';
import 'package:flutter_widgets/WidgetPages/button.dart';
import 'package:flutter_widgets/WidgetPages/container.dart';
import 'package:flutter_widgets/WidgetPages/row.dart';
import 'package:flutter_widgets/WidgetPages/text.dart';
import 'package:flutter_widgets/WidgetPages/textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Widgets Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var widgetList = [
    'Container',
    'Text',
    'Button',
    'TextField',
    'Column',
    'Row',
    'AppBar',
    'Stack'
  ];
  var kPcolor = Colors.indigo;
  final pages = [
    const ContainerHelper(),
    const TextHelper(),
    const ButtonHelper(),
    const TextfieldHelper(),
    const ColumnHelper(),
    const RowHelper(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemBuilder: (builder, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child: Card(
                elevation: 4,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return pages[index];
                    }));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widgetList[index],
                          style: TextStyle(
                              color: kPcolor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: kPcolor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: widgetList.length,
        ),
      ),
    );
  }
}
