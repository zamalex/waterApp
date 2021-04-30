import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';

import 'clip_shapes.dart';

class ChatScreen extends StatelessWidget {
  static const blue = Color.fromRGBO(5, 102, 141, 1);
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
                    ' طلب الدعم لطلب رقم 982100',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(122)),
      body: Column(
        children: [
          Text('أمس، 15/08/2020'),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
              itemBuilder: (c, i) {
                return i % 2 == 0
                    ? ChatBubble(
                        alignment: Alignment.topLeft,
                        clipper:
                            ChatBubbleClipper1(type: BubbleType.receiverBubble),
                        backGroundColor: Colors.white,
                        margin: EdgeInsets.only(top: 20),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '12:00 PM',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Icon(
                                    Icons.check,
                                    size: 12,
                                  )
                                ],
                                mainAxisAlignment: MainAxisAlignment.end,
                              )
                            ],
                          ),
                        ),
                      )
                    : ChatBubble(
                        alignment: Alignment.topRight,
                        clipper:
                            ChatBubbleClipper1(type: BubbleType.sendBubble),
                        backGroundColor: Color.fromRGBO(219, 226, 237, 1),
                        margin: EdgeInsets.only(top: 20),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '12:00 PM',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Icon(
                                    Icons.check,
                                    size: 12,
                                  )
                                ],
                                mainAxisAlignment: MainAxisAlignment.end,
                              )
                            ],
                          ),
                        ),
                      );
              },
              itemCount: 2,
            ),
          )),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: blue),
                  hintText: 'اكتب رسالتك هنا',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/image.png',
                      width: 20,
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        backgroundColor: blue,
                        child: Image.asset(
                          'assets/images/send.png',
                          width: 20,
                        )),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(240, 244, 248, 1),
                      ),
                      borderRadius: BorderRadius.circular(28)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(240, 244, 248, 1),
                      ),
                      borderRadius: BorderRadius.circular(28)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(240, 244, 248, 1),
                      ),
                      borderRadius: BorderRadius.circular(28)),
                  fillColor: Color.fromRGBO(219, 226, 237, .7),
                  filled: true),
            ),
          )
        ],
      ),
    );
  }
}
