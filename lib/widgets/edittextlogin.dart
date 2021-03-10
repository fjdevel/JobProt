import 'dart:ui';
import 'package:flutter/material.dart';

class EditTextLogin extends StatefulWidget {

  @override
  _EditTextLoginState createState() => _EditTextLoginState();
}

class _EditTextLoginState extends State<EditTextLogin> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration( color: Colors.white,
        border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black26, offset: const Offset(0.0, 3.0), blurRadius: 1.2, spreadRadius: 0.5)
          ]
      ),
      child: Stack(
        children: [
          Container(margin: EdgeInsets.only(left: 20, top: 10),child: Text("Email", style: TextStyle(fontSize: 10),)),
          TextField(
            decoration: InputDecoration(border: InputBorder.none,
                hintText: 'ejemplo@ejemplo.com', hintStyle: TextStyle(fontSize: 12),
                contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 10), isDense: true,
            ), textAlignVertical: TextAlignVertical.bottom,
          ),
        ],
      ),
    );
  }
}
