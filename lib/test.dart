import 'package:flutter/material.dart';
import 'package:water/cart.dart';

class TestShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      height: 225,
      child: Stack(
        children: [
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      child: ClipPath(
                        clipper: TestClipper(),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade300,
                              borderRadius: BorderRadius.circular(8)),
                          /* child: Image.asset(
                            "",
                            fit: BoxFit.contain,
                          ),*/
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    height: 200,
                    width: MediaQuery.of(context).size.width * .3,
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("اسم المنتج"),
                          Text("11 ريال"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 20,
              child: Container(
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(5, 102, 141, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23)))),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => CartScreen()));
                  },
                  label: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/images/shop.png',
                      width: 20,
                    ),
                    minRadius: 20,
                  ),
                  icon: Text("اضف الى مشترياتي"),
                ),
                //  width: MediaQuery.of(context).size.width * .5,

                height: 50,
              ))
        ],
      ),
    );
  }
}

class TestClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(0, size.height);
    path_0.quadraticBezierTo(size.width * 0.1875000, size.height,
        size.width * 0.2500000, size.height);
    path_0.quadraticBezierTo(size.width * 0.5220833, size.height * 0.6028571,
        size.width * 0.6683333, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
