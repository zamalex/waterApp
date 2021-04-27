import 'package:flutter/material.dart';

import 'clip_shapes.dart';

class OffersScreen extends StatelessWidget {
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
          padding: EdgeInsets.all(10),
          color: Colors.grey.shade200,
          height: double.infinity,
          child: ListView.builder(
            itemBuilder: (c, i) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 160,
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/woman-holding-glass.jpg',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width * .8,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'الطلب عليك والخصم علينا',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(114, 158, 64, 1),
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'خصم بقيمة 15% لعملاء التميز من STC ، استخدم كوبون stc_0013',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: 5,
          ),
        ));
  }
}
