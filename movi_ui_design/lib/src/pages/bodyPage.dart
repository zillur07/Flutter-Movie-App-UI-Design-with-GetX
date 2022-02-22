// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movi_ui_design/src/pages/movieDetailes.dart';
import 'package:movi_ui_design/src/widgets/kText.dart';
//import 'package:movi_ui_design/src/configs/appColors.dart';
import '../controllers/staticData.dart';

class BodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: .58,
          ),
          itemCount: movieImageAndName.length,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          primary: false,
          itemBuilder: (context, index) {
            final item = movieImageAndName[index];
            return GestureDetector(
              onTap: () => Get.to(MovieDetailes(
                item: item, id: int.parse(item['id'].toString()),
              )),
              child: Container(
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.vertical(
                  //   top: Radius.circular(12),
                  // ),
                  borderRadius: BorderRadius.circular(12),
                  color: HexColor('#151212'),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 130,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: HexColor('#1c1c1c'),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Image.network(
                            '${item['image']}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          KText(
                            text: '${item['title']} Movies',
                            fontSize: 17,
                          ),
                          // Text(
                          //   '${item['title']}',
                          //   style: TextStyle(
                          //     fontSize: 17,
                          //   ),
                          // ),
                          KText(
                            textAlign: TextAlign.center,
                            text: '${item['year']}',
                            fontSize: 14,
                          ),
                          SizedBox(height: 2),
                          RatingBar.builder(
                            initialRating: 4.2,
                            minRating: 1,
                            itemSize: 15,
                            // updateOnDrag: true,
                            tapOnlyMode: true,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (double value) {},
                          ),
                          SizedBox(height: 2),
                          // KText(
                          //   text: '${item['desciption']}',
                          //   maxLines: 2,
                          //   color: Colors.white.withOpacity(.70),
                          //   fontSize: 11,
                          // ),
                          Text(
                            '${item['desciption']}',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.white.withOpacity(.70),
                            ),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
