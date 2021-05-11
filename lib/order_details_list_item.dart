import 'package:flutter/material.dart';

class OrderDetailsListItem extends StatefulWidget {
  @override
  _OrderDetailsListItemState createState() => _OrderDetailsListItemState();
}

class _OrderDetailsListItemState extends State<OrderDetailsListItem> {
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
              leading: Image.asset(
                'assets/images/add.png',
                width: 25,
              ),
              title: Text('المنتجات'),
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
                    IconButton(
                      onPressed: () {
                        setState(() {
                          expanded = !expanded;
                        });
                      },
                      icon: expanded
                          ? Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black,
                            )
                          : Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                            ),
                    )
                  ],
                ),
              ),
            ),
            if (expanded) Divider(),
            AnimatedCrossFade(
              duration: Duration(milliseconds: 250),
              crossFadeState: expanded
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              secondChild: Container(),
              firstChild: Container(
                height: 150,
                child: ListView.builder(
                  itemBuilder: (c, i) {
                    return ListTile(
                        leading: Image.asset(
                          'assets/images/image.png',
                          width: 50,
                        ),
                        title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('اسم المنتح'),
                              Text('12 ريال'),
                              Text('الكمية 1')
                            ]),
                        subtitle: Divider());
                  },
                  itemCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                ),
              ),
            )
          ],
        ));
  }
}
