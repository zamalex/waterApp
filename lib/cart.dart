import 'package:flutter/material.dart';

import 'clip_shapes.dart';

class CartScreen extends StatelessWidget {
  static const darkBlue = Color.fromRGBO(5, 102, 141, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Image.asset(
                      "assets/images/shrink.png",
                      width: 70,
                      height: 70,
                    ),
                  ),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(122)),
        body: Container(
          color: Colors.grey.shade200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.grey.shade200,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.white,
                              child: ListTile(
                                leading: Image.asset(
                                  "assets/images/shrink.png",
                                  width: 70,
                                  height: 70,
                                ),
                                title: Text("اسم المنتج"),
                                subtitle: Text("12 ريال"),
                                trailing: Container(
                                  // width: MediaQuery.of(context).size.width - 200,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            color: darkBlue,
                                            borderRadius:
                                                BorderRadius.circular(23)),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                    color: darkBlue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "1",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                    color: darkBlue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        'assets/images/delete.png',
                                        width: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Divider(
                                height: 20,
                                thickness: 2,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: 5,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
