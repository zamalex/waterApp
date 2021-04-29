import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:water/slider.dart';
import 'package:water/test.dart';

import 'clip_shapes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        appBar: PreferredSize(
            child: Container(
              color: Colors.grey.shade200,
              child: ClipPath(
                clipper: AppBarClipper(),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.white,
                  child: Center(
                    child: SafeArea(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'المدينة',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 18),
                          ),
                          PopupMenuButton(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('الرياض',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                Icon(Icons.keyboard_arrow_down_sharp),
                              ],
                            ),
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  child: Text('الرياض'),
                                )
                              ];
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(122)),
        body: Container(
          child: Container(
            color: Colors.grey.shade200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: HomeSlider(),
                ),
                Container(
                  child: Text(
                    'المنتجات',
                    style: TextStyle(
                        color: Color.fromRGBO(5, 102, 141, 1),
                        fontWeight: FontWeight.w700),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey.shade200,
                    height: (MediaQuery.of(context).size.height),
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (ctx, i) => TestShape(),
                      itemCount: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
