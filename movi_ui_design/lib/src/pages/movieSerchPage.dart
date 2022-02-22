import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movi_ui_design/src/pages/bodyPage.dart';
import 'package:movi_ui_design/src/pages/serchComponent.dart';
import 'package:movi_ui_design/src/widgets/kText.dart';

class MovieSerchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(top: 8),
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
        title: Container(
          padding: EdgeInsets.only(top: 8),
          child: KText(
            text: 'Finder',
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(65),

          // child: Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //   child: TextFormField(
          //     readOnly: true,
          //     decoration: InputDecoration(
          //       enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          //       focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
          //       focusColor: HexColor('#1c1c1c'),
          //       hintText: 'Find Movie',
          //       hintStyle: GoogleFonts.poppins(color: Colors.white54),
          //       filled: true,
          //     ),
          //   ),
          // ),

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: TextField(
                style: TextStyle(color: Colors.red),
                controller: null,
                autofocus: false,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 20,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    focusColor: HexColor('#ffffff'),
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.white54, fontSize: 17),
                    hintText: 'Search...',
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),
                    fillColor: Colors.teal,
                    border: InputBorder.none),
              ),
            ),
          ),
        ),
      ),
      body: BodyPage(),
    );
  }
}
