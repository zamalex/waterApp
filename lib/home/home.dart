import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:water/slider.dart';
import 'package:water/home/product_list_item.dart';

import '../clip_shapes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body:  CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              pinned: true,
              snap: false,
              floating: false,
              automaticallyImplyLeading: false,
              expandedHeight: 350,
              shadowColor: Colors.transparent,
              flexibleSpace:  FlexibleSpaceBar(
                title: Text(''),
                background:  Column(
                  children: [
                    PreferredSize(
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
                                  child: Text(''),
                                 /* child: Column(
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
                                  ),*/
                                ),
                              ),
                            ),
                          ),
                        ),
                        preferredSize: Size.fromHeight(122)),
                    HomeSlider(),
                  ],
                )
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'المنتجات',
                      style: TextStyle(
                          color: Color.fromRGBO(5, 102, 141, 1),
                          fontWeight: FontWeight.w700),
                    ),
                  ),

              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return ProductListItem();
                },
                childCount: 5,
              ),
            ),
          ],
        ),
      )
    );
  }
}
