import 'package:flutter/material.dart';
import 'package:water/order_details_list_item.dart';
import 'package:water/order_list_item.dart';

class OrderDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('طلب رقم 12345641'),
          Text('تم الطلب يوم 12-12-2015'),
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
                    label: Text('عنوان التوصيل')),
                Text('المنزل'),
                Text(
                    'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربي')
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
                      'assets/images/location.png',
                      width: 25,
                    ),
                    label: Text('رقم الجوال')),
                Text('+966 666 6666'),
              ],
            ),
          ),
          Card(child: OrderDetailsListItem()),
          Card(
            child: Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('طريقة الدفع'),
                  TextButton.icon(
                      onPressed: null,
                      icon: Image.asset(
                        'assets/images/location.png',
                        width: 25,
                      ),
                      label: Text('الدفع كاش عند الاستلام')),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ملخص الطلب'),
                  Divider(),
                  Row(
                    children: [Text('مجموع الطلب'), Text('36 ريال')],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  Row(
                    children: [Text('رسوم التوصيل'), Text('36 ريال')],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  Row(
                    children: [Text('الخصم'), Text('36 ريال')],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  Divider(),
                  Row(
                    children: [Text('المجموع الكلي'), Text('36 ريال')],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
