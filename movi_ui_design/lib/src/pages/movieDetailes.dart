// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:movi_ui_design/src/pages/categoryPage.dart';
import 'package:movi_ui_design/src/widgets/kText.dart';

class MovieDetailes extends StatelessWidget {
  final Map<String, Object> item;
  final int id;

  MovieDetailes({required this.item, required this.id});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Get.defaultDialog(
                      title: '${item['title']}',
                      content: Image.network(
                        '${item['image']}',
                        fit: BoxFit.cover,
                        height: 500,
                        width: Get.width,
                      ),
                    ),
                    child: Container(
                      height: 200,
                      width: Get.width,
                      // child: FlutterLogo(),
                      child: Image.network(
                        '${item['image']}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () => Get.back(),
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 7,
                    child: KText(
                      text: 'Overview',
                      color: RenderErrorBox.backgroundColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        KText(
                          text: '${item['title']}',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        KText(
                          text: '${item['year']}',
                          fontSize: 24,
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    RatingBar.builder(
                      initialRating: 4.3,
                      minRating: 1,
                      itemSize: 21,
                      // updateOnDrag: true,
                      tapOnlyMode: true,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 6),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (double value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryPages(),
                    SizedBox(
                      height: 15,
                    ),
                    KText(
                      text: 'Storyline',
                      fontSize: 25,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '${item['desciption']}',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                      // maxLines: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
