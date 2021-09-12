import 'package:flutter/material.dart';
import 'package:water/support/chat.dart';
import 'package:water/support/request_support.dart';

import '../clip_shapes.dart';

class SupportScreen extends StatelessWidget {
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
                child: Center(
                    /* child: Image.asset(
                    "",
                    width: 70,
                    height: 70,
                  ),*/
                    ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(122)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => RequestSupportScreen()));
                        },
                        icon: CircleAvatar(
                          backgroundColor: Color.fromRGBO(114, 158, 64, 1),
                          child: Image.asset(
                            'assets/images/support.png',
                            width: 25,
                          ),
                        ),
                        label: Container(
                          child: Text(
                            'طلب الدعم',
                            style: TextStyle(color: blue),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 15),
                        ))),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)))),
                        onPressed: () {},
                        icon: CircleAvatar(
                          backgroundColor: Color.fromRGBO(114, 158, 64, 1),
                          child: Image.asset(
                            'assets/images/call.png',
                            width: 25,
                          ),
                        ),
                        label: Container(
                          child: Text(
                            'اتصل بنا',
                            style: TextStyle(color: blue),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 15),
                        ))),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            child: ListView.builder(
              itemBuilder: (c, i) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => ChatScreen()));
                        },
                        title: Container(
                          child: Text(
                            ' طلب الدعم لطلب رقم 982100',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, color: blue),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 10),
                        ),
                        subtitle: Text(
                          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
                          style: TextStyle(color: blue),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                child: Text(
                              '08/08/2020',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, color: blue),
                            )),
                          ],
                        ),
                      ),
                      Divider()
                    ],
                  ),
                );
              },
              itemCount: 2,
            ),
          )),
        ],
      ),
    );
  }
}
