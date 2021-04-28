import 'package:flutter/material.dart';
import 'package:water/orders.dart';

import 'clip_shapes.dart';

class AccountScreen extends StatelessWidget {
  static const green = Color.fromRGBO(114, 158, 64, 1);
  static const blue = Color.fromRGBO(13, 33, 66, 1);
  static const ablue = Color.fromRGBO(5, 102, 141, 1);

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
                  child: Image.asset(
                    "assets/images/shrink.png",
                    width: 70,
                    height: 70,
                  ),
                ),
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
                'أهلا، محمد',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text('+966 66 666 6666'),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: green,
                          minRadius: MediaQuery.of(context).size.width * .1,
                          child: Image.asset(
                            'assets/images/points.png',
                            width: 32,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('نقاطي')
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => OrdersScreen()));
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: green,
                            minRadius: MediaQuery.of(context).size.width * .1,
                            child: Image.asset(
                              'assets/images/orders.png',
                              width: 32,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('طلباتي')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: green,
                          minRadius: MediaQuery.of(context).size.width * .1,
                          child: Image.asset(
                            'assets/images/swap.png',
                            width: 32,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('الإرجاع')
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: green,
                          minRadius: MediaQuery.of(context).size.width * .1,
                          child: Image.asset(
                            'assets/images/shops.png',
                            width: 32,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('متاجر')
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                child: Text('حسابي'),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    AccountListTile(
                      title: 'مفضلاتي',
                      badge: true,
                      image: 'assets/images/heart.png',
                    ),
                    Divider(),
                    AccountListTile(
                        title: 'العناوين',
                        badge: false,
                        image: 'assets/images/location.png'),
                    Divider(),
                    AccountListTile(
                        title: 'طرق الدفع',
                        badge: false,
                        image: 'assets/images/wallet.png'),
                    Divider(),
                    AccountListTile(
                        title: 'الملف الشخصي',
                        badge: false,
                        image: 'assets/images/profile.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                child: Text('الإعدادات'),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    AccountListTile(
                        title: 'البلد',
                        badge: false,
                        text: 'المملكة العربية السعودية',
                        image: 'assets/images/flag.png'),
                    Divider(),
                    AccountListTile(
                        title: 'اللغة',
                        badge: false,
                        text: 'English',
                        image: 'assets/images/world.png'),
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.logout,
                      color: blue,
                    ),
                    label: Text(
                      'تسجيل خروج',
                      style: TextStyle(color: blue),
                    ),
                  )),
              Divider(color: Colors.white),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/facebook.png',
                    width: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/images/twitter.png',
                    width: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/images/instagram.png',
                    fit: BoxFit.contain,
                    width: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/images/whatsapp.png',
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'شروط الاستخدام',
                    style: TextStyle(color: blue),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                      color: ablue,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'سياسة الخصوصية',
                    style: TextStyle(color: blue),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AccountListTile extends StatelessWidget {
  static const green = Color.fromRGBO(114, 158, 64, 1);
  static const blue = Color.fromRGBO(13, 33, 66, 1);
  String title;
  String text;
  bool badge;
  String image;
  AccountListTile(
      {@required this.title,
      @required this.badge,
      this.text,
      @required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        image,
        width: 25,
      ),
      title: Text(
        title,
        style: TextStyle(color: blue, fontWeight: FontWeight.w500),
      ),
      trailing: Container(
        // width: MediaQuery.of(context).size.width - 200,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (badge)
              CircleAvatar(
                radius: 12,
                backgroundColor: green,
                child: FittedBox(
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            SizedBox(
              width: 10,
            ),
            if (text != null)
              Text(
                text,
                style: TextStyle(color: green, fontWeight: FontWeight.w500),
              ),
            Icon(
              Icons.chevron_right,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
