import 'package:flutter/material.dart';
import 'package:water/addrss_item.dart';

import 'clip_shapes.dart';

class AddressesScreen extends StatelessWidget {
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
                    'العناوين',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(122)),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
              itemBuilder: (c, i) {
                return AddressListItem();
              },
              itemCount: 1,
            ),
          )),
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.ac_unit),
              label: Container(
                child: Text('إضافة عنوان جديد'),
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
          )
        ],
      ),
    );
  }
}
