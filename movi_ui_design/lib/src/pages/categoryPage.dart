import 'package:flutter/material.dart';
import 'package:movi_ui_design/src/controllers/staticData.dart';
import 'package:movi_ui_design/src/widgets/kText.dart';

class CategoryPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // child: ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //   shrinkWrap: true,
      //   primary: false,
      //   itemCount: 20,
      //   itemBuilder: (context, int index) {
      //     return ListTile(
      //       title: Text('Data'),
      //     );
      //   },
      // ),
      child: ListView.builder(
          padding: EdgeInsets.symmetric(
            horizontal: 5,
          ),
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          primary: false,
          shrinkWrap: true,
          itemCount: movieImageAndName.length,
          itemBuilder: (context, int index) {
            final item = movieImageAndName[index];
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)),
                width: 110,
                child: KText(
                  text: '${item['category']}',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            );
          }),
    );
  }
}
