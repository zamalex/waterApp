import 'package:flutter/material.dart';

class OrderListItem extends StatefulWidget {
  @override
  _OrderListItemState createState() => _OrderListItemState();
}

class _OrderListItemState extends State<OrderListItem> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              title: Text('طلب رقم 123456'),
              subtitle: Text('تم الطلب يوم 12-11-1995'),
              trailing: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(10),
                      child: Text('في الطريق',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                    TextButton.icon(
                        onPressed: () {
                          setState(() {
                            expanded = !expanded;
                          });
                        },
                        label: expanded
                            ? Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                              )
                            : Icon(
                                Icons.chevron_right,
                                color: Colors.black,
                              ),
                        icon: Text(
                          'التفاصيل',
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
              ),
            ),
            if (expanded) Divider(),
            if (expanded)
              Container(
                height: 150,
                child: ListView.builder(
                  itemBuilder: (c, i) {
                    return ListTile(
                      leading: Image.asset(
                        'assets/images/shrink.png',
                        width: 50,
                      ),
                      title: Text('اسم المنتح'),
                      subtitle: Text('11 ريال'),
                    );
                  },
                  itemCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                ),
              )
          ],
        ));
  }
}
