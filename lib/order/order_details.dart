import 'package:flutter/material.dart';
import 'package:water/order/order_details_list_item.dart';
import '../clip_shapes.dart';

class OrderDetailsScreen extends StatelessWidget {
  static const blue = Color.fromRGBO(13, 33, 66, 1);
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
                child: Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 150,
                    width: double.infinity,
                    color: Colors.white,
                    child: AppBar(
                      centerTitle: true,
                      title: Text(
                        'تفاصيل الطلب',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      backgroundColor: Colors.white,
                      iconTheme: IconThemeData(color: Colors.black),
                    )),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(122)),
      body: Container(
        color: Colors.grey.shade200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'طلب رقم 12345641',
                style: TextStyle(color: blue),
              ),
              Text(
                'تم الطلب يوم 12-12-2015',
                style: TextStyle(color: blue),
              ),
              Divider(),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                        onPressed: null,
                        icon: Image.asset(
                          'assets/images/location.png',
                          width: 25,
                        ),
                        label: Text(
                          'عنوان التوصيل',
                          style: TextStyle(color: blue),
                        )),
                    Text(
                      'المنزل',
                      style: TextStyle(color: blue),
                    ),
                    Text(
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربي',
                      style: TextStyle(color: blue),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                        onPressed: null,
                        icon: Image.asset(
                          'assets/images/phone.png',
                          width: 25,
                        ),
                        label: Text(
                          'رقم الجوال',
                          style: TextStyle(color: blue),
                        )),
                    Text(
                      '+966 666 6666',
                      style: TextStyle(color: blue),
                    ),
                  ],
                ),
              ),
              Card(
                child: OrderDetailsListItem(),
                margin: EdgeInsets.all(10),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'طريقة الدفع',
                        style: TextStyle(color: blue),
                      ),
                      TextButton.icon(
                          onPressed: null,
                          icon: Image.asset(
                            'assets/images/pay.png',
                            width: 25,
                          ),
                          label: Text(
                            'الدفع كاش عند الاستلام',
                            style: TextStyle(color: blue),
                          )),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ملخص الطلب',
                        style: TextStyle(color: blue),
                      ),
                      Divider(),
                      Row(
                        children: [
                          Text(
                            'مجموع الطلب',
                            style: TextStyle(color: blue),
                          ),
                          Text(
                            '36 ريال',
                            style: TextStyle(color: blue),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'رسوم التوصيل',
                            style: TextStyle(color: blue),
                          ),
                          Text(
                            '36 ريال',
                            style: TextStyle(color: blue),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'الخصم',
                            style: TextStyle(color: blue),
                          ),
                          Text(
                            '36 ريال',
                            style: TextStyle(color: blue),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'المجموع الكلي',
                            style: TextStyle(color: blue),
                          ),
                          Text(
                            '36 ريال',
                            style: TextStyle(color: blue),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
