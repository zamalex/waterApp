import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromRGBO(240, 244, 248, 1),
      child: Column(
        children: [
          ClipPath(
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Color.fromRGBO(240, 244, 248, 1),
            height: MediaQuery.of(context).size.height - 150,
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
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(23)),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Text("+"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("1"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Text("-"),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.delete)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
    ));
  }
}

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.quadraticBezierTo(
        0, size.height * 0.5871429, 0, size.height * 0.7828571);
    path_0.quadraticBezierTo(size.width * 0.4975000, size.height, size.width,
        size.height * 0.7900000);
    path_0.lineTo(size.width, 0);

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
