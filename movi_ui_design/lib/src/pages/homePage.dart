// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movi_ui_design/src/controllers/staticData.dart';
import 'package:movi_ui_design/src/pages/bodyPage.dart';
import 'package:movi_ui_design/src/pages/categoryPage.dart';
import 'package:movi_ui_design/src/pages/movieSerchPage.dart';

import 'package:movi_ui_design/src/widgets/kText.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(
                  text: 'Watch Now',
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                IconButton(
                  onPressed: () => Get.to(
                    MovieSerchPage(),
                  ),
                  icon: Icon(
                    Icons.search,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(75),
            child: CategoryPages(),
          ),
        ),
        body: BodyPage(),

        bottomSheet: Container(
          color: HexColor('#1c1c1c'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {},
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
                  Icons.drag_indicator_rounded,
                  size: 30,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
        // body: Padding(
        //   padding: EdgeInsets.symmetric(
        //     horizontal: 20,
        //     vertical: 20,
        //   ),
        //   child: GridView.builder(
        //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2,
        //         mainAxisSpacing: 16,
        //         crossAxisSpacing: 16,
        //         childAspectRatio: .70,
        //       ),
        //       itemCount: 15,
        //       shrinkWrap: true,
        //       physics: BouncingScrollPhysics(),
        //       primary: false,
        //       itemBuilder: (context, index) {
        //         return Container(
        //           decoration: BoxDecoration(
        //             color: Colors.redAccent,
        //           ),
        //           child: Column(
        //             //crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Container(
        //                 height: 130,
        //                 width: Get.width,
        //                 decoration: BoxDecoration(
        //                   color: Colors.green,
        //                   borderRadius: BorderRadius.vertical(
        //                     top: Radius.circular(20),
        //                   ),
        //                 ),
        //                 child: ClipRRect(
        //                   borderRadius: BorderRadius.vertical(
        //                     top: Radius.circular(20),
        //                   ),
        //                 ),
        //               )
        //             ],
        //           ),
        //         );
        //       }),
        // ),
      );
}
