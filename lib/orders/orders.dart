import 'package:flutter/material.dart';
import 'package:water/orders/order_list_item.dart';

import '../clip_shapes.dart';

class OrdersScreen extends StatelessWidget {
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
                        'طلبات سابقة',
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
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .7,
                    height: 40,
                    child: TextField(
                      autofocus: false,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          hintText: 'ابحث عن رقم الطلب هنا',
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  PopupMenuButton(
                    itemBuilder: (_) {
                      return [PopupMenuItem(child: Text('الكل'))];
                    },
                    color: Colors.white,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Text('الكل'),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height - 150 - 60,
                child: ListView.builder(
                  //   physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (c, i) {
                    return OrderListItem();
                  },
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
