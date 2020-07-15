import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function textInput;
  final bool flag;

  CustomTextField({this.textInput, this.flag});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        color: Color(0xff2c373a),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(width: 8.0),
            Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 12.0),
                child: Icon(Icons.insert_emoticon,
                    size: 25.0, color: Color(0xffaeb5bb))),
            SizedBox(width: 8.0),
            Expanded(
              child: Scrollbar(
                child: TextField(
                  cursorColor: Color(0xff02ad9f),
                  onChanged: (value) {
                    if (value.length > 0) {
                      textInput(false);
                    } else {
                      textInput(true);
                    }
                  },
                  minLines: 1,
                  maxLines: 6,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Type a message',
                    hintStyle: TextStyle(color: Color(0xffaeb5bb)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 12.0),
              child: Transform.rotate(
                angle: -120.0,
                child: Icon(Icons.attach_file,
                    size: 25.0, color: Color(0xffaeb5bb)),
              ),
            ),
            SizedBox(width: 12.0),
            flag
                ? Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 12.0),
                    child: Icon(Icons.camera_alt,
                        size: 25.0, color: Color(0xffaeb5bb)),
                  )
                : Container(),
            SizedBox(width: 12.0),
          ],
        ),
      ),
    );
  }
}
