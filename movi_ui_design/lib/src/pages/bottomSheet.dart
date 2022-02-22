// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomSheet extends StatefulWidget {
  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor('#1c1c1c'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
            onPressed: () {},
            // ignore: prefer_const_constructors
            child: Icon(
              Icons.home,
              size: 30,
              color: Colors.grey,
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Icon(
              Icons.video_camera_back_rounded,
              size: 30,
              color: Colors.greenAccent,
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Icon(
              Icons.favorite,
              size: 30,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
