import 'package:flutter/material.dart';

class TextHelper extends StatelessWidget {
  const TextHelper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Title(
            color: Colors.white,
            child: const Text('Text Widget'),
          ),
        ),
        body: Center(
          child: TextWidgets.textWidget5(),
        ),
      ),
    );
  }
}

class TextWidgets {
// Basic Text widget
  static Widget textWidget1() {
    return Text('Hello world!');
  }

  // Text widget multiline with paddig
  static Widget textWidget2() {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        '[32] Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur adipisci[ng] velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? [D]Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae ',
      ),
    );
  }

  // Text widget basic style
  static Widget textWidget3() {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        '[32] Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur adipisci[ng] velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? [D]Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae ',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.right,
        textDirection: TextDirection.ltr,
      ),
    );
  }

  // Text widget TextStyle
  static Widget textWidget4() {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        '[32] Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur adipisci[ng] velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? [D]Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae ',
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.right,
        textDirection: TextDirection.ltr,
        style: TextStyle(
            color: Colors.indigo,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            wordSpacing: 10),
      ),
    );
  }

  // Text widget with TextStyle and decorations
  static Widget textWidget5() {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        '[32] Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur adipisci[ng] velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum[d] exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? [D]Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae ',
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.right,
        textDirection: TextDirection.ltr,
        style: TextStyle(
            color: Colors.indigo,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            wordSpacing: 10,
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.dashed,
            decorationColor: Colors.red),
      ),
    );
  }
}
