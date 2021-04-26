import 'package:flutter/material.dart';
import 'package:water/master.dart';
import 'package:water/slider.dart';

import 'home.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(246, 246, 246, 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [CarosilSlider()],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(5, 102, 141, 1)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28)))),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => MasterScreen()));
                    },
                    icon: Image.asset(
                      'assets/images/email.png',
                      width: 32,
                    ),
                    label: Container(
                      child: Text(
                        'متابعة بواسطة الايميل',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          child: Image.asset(
                            'assets/images/facebook.png',
                            width: 32,
                          ),
                          margin: EdgeInsets.symmetric(vertical: 12),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                                side: BorderSide(
                                    color: Color.fromRGBO(5, 102, 141, 1))),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          child: Image.asset(
                            'assets/images/google.png',
                            width: 32,
                          ),
                          margin: EdgeInsets.symmetric(vertical: 12),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                                side: BorderSide(
                                    color: Color.fromRGBO(5, 102, 141, 1))),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'من خلال المتابعة، فإنك توافق على شروط الخدمات وسياسة الخصوصية الخاصة بنا',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(13, 33, 66, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
