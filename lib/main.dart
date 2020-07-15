import 'package:flutter/material.dart';
import 'package:whatsapp_text_field/custom_text_field.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool flag = true;

  void textInput(bool flag) {
    setState(() {
      this.flag = flag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff02ad9f),
      ),
      home: Scaffold(
        backgroundColor: Color(0xff131d25),
        appBar: AppBar(
          title: Text('Whatsapp TextField'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                      child: CustomTextField(
                    textInput: this.textInput,
                    flag: this.flag,
                  )),
                  SizedBox(
                    width: 8.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Color(0xff02ad9f),
                      radius: 25.0,
                      child: Icon(
                        flag ? Icons.mic : Icons.send,
                        color: Colors.white,
                        size: 25.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
