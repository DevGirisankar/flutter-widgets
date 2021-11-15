import 'package:flutter/material.dart';

class TextfieldHelper extends StatefulWidget {
  const TextfieldHelper({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TextfieldHelperState();
  }
}

class _TextfieldHelperState extends State<TextfieldHelper> {
  TextEditingController mycontroller = TextEditingController();
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Title(
            color: Colors.white,
            child: const Text('TextField Widget'),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                textfield2(),
                const SizedBox(
                  height: 20,
                ),
                passwordField(),
                const SizedBox(
                  height: 20,
                ),
                // TextButton(
                //   onPressed: () {
                //     print(mycontroller.text);
                //   },
                //   child: const Text('Save'),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textfield() {
    return const TextField(
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Name',
        hintText: 'Name',
      ),
    );
  }

  Widget textfield1() {
    return const TextField(
      maxLines: 3,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Name',
        hintText: 'Name',
      ),
    );
  }

  Widget textfield2() {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Name',
        hintText: 'Name',
      ),
    );
  }

  Widget textfield3() {
    return TextField(
      controller: mycontroller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Name',
        hintText: 'Name',
      ),
    );
  }

  Widget passwordField() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.indigo, width: 2)),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            obscureText: !isPasswordVisible,
            controller: mycontroller,
            decoration: const InputDecoration(
              border: InputBorder.none,
              labelText: 'Password',
              hintText: 'Password',
            ),
          )),
          SizedBox(
            child: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
              icon: Icon(
                Icons.remove_red_eye,
                color: isPasswordVisible ? Colors.indigo : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
