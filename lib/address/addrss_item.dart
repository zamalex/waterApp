import 'package:flutter/material.dart';

class AddressListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(
              'assets/images/location.png',
              width: 20,
            ),
            title: Text('العنوان الرئيسي'),
            trailing: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/edit.png',
                        width: 20,
                      ),
                      label: Text(
                        'تعديل',
                        style: TextStyle(color: Colors.black),
                      )),
                  Text('|'),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/remove.png',
                        width: 20,
                      ),
                      label: Text(
                        'حذف',
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Text('الاسم'),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'الاسم بالكامل',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text('العنوان'),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'العنوان بالتفصيل',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text('الجوال'),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'رقم الجوال',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
