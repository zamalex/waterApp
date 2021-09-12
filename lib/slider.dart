import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class CarosilSlider extends StatefulWidget {
  final sliderImages = [
    'assets/images/woman-holding-glass.jpg',
    'assets/images/drink.jpeg'
  ];

  @override
  _CarosilSliderState createState() => _CarosilSliderState();
}

class _CarosilSliderState extends State<CarosilSlider> {
  int _current = 0;

  List getChild() {
    return widget.sliderImages.map((i) {
      return Container(
        // margin: EdgeInsets.all(5.0),
        child: ClipPath(
          clipper: ChatBackgroundClipper(),
          child: Container(
            child: Image.asset(i, fit: BoxFit.cover, width: 1000.0),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 1,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
        ),
        items: getChild(),
      ),
      Align(
        alignment: Alignment.topRight,
        child: Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.topRight,
          width: MediaQuery.of(context).size.width * .7,
          child: Text(
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Color.fromRGBO(13, 33, 66, 1)),
            textAlign: TextAlign.right,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: widget.sliderImages.map((image) {
            int index = widget.sliderImages.indexOf(image);
            return Container(
              width: 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(219, 226, 237, 1)),
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Colors.white
                      : Color.fromRGBO(219, 226, 237, 1)),
            );
          }).toList(),
        ),
      ),
    ]);
  }
}

class ChatBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(0, size.height);
    path_0.quadraticBezierTo(
        size.width * 0.4, size.height, size.width, size.height * 0.6);
    // path_0.quadraticBezierTo(size.width, 0, size.width, 0);
    path_0.lineTo(size.width, 0);

    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class HomeSlider extends StatefulWidget {
  final sliderImages = [
    'assets/images/woman-holding-glass.jpg',
    'assets/images/drink.jpeg'
  ];

  @override
  _HomeSliderState createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int _current = 0;

  List getChild() {
    return widget.sliderImages.map((i) {
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          // margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            child: Image.asset(
              i,
              fit: BoxFit.cover,
              width: 1000.0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
          height: 200,
          viewportFraction: .8,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 2.0,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
        ),
        items: getChild(),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.sliderImages.map((image) {
          int index = widget.sliderImages.indexOf(image);
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Colors.white
                    : Color.fromRGBO(0, 0, 0, 0.4)),
          );
        }).toList(),
      ),
    ]);
  }
}
