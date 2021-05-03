import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'clip_shapes.dart';

class RequestSupportScreen extends StatelessWidget {
  static const green = Color.fromRGBO(114, 158, 64, 1);
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
                  child: Text(
                    'طلب الدعم',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(122)),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 150,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                width: MediaQuery.of(context).size.width,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    onChanged: (_) {},
                    hint: Text('رقم الطلب'),
                    items: [
                      DropdownMenuItem(
                        child: Text('الكل'),
                      )
                    ],
                    isExpanded: true,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    maxLines: 10,
                    autofocus: false,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      //  contentPadding: EdgeInsets.all(5),
                      hintText: 'التفاصيل',
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DottedBorder(
                dashPattern: [5],
                strokeWidth: 2,
                padding: EdgeInsets.all(0),
                color: green,
                borderType: BorderType.RRect,
                radius: Radius.circular(5),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/image.png',
                      width: 25,
                      color: green,
                    ),
                    label: Container(
                      child: Text(
                        'أضف صورة هنا',
                        style: TextStyle(color: green),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 15),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/send.png',
                    width: 25,
                  ),
                  label: Container(
                    child: Text('إرسال الطلب'),
                    margin: EdgeInsets.symmetric(vertical: 15),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(5, 102, 141, 1))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
