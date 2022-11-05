import 'package:eazy_cheez_retail/screens/live_orders.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  // TransactionPage({Key  key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController taskController = TextEditingController();

  var name = 'Ashlesh Shenoy';
  var phone = "6361284091";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                color: Color.fromARGB(255, 219, 215, 215),
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.longestSide * .21,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text("Hey",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.black,
                            )),
                        SizedBox(width: 3),
                        Icon(
                          Icons.back_hand,
                          color: Color.fromARGB(255, 223, 168, 87),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "${name}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        Text("+91 ${phone}",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            )),
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Container(
              width: size.width * .94,
              child: Row(
                children: [
                  SizedBox(width: size.width * .001),
                  Text("Account settings",
                      style: TextStyle(
                          color: Color.fromARGB(255, 131, 122, 122),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: 'Inter'))
                ],
              ),
            ),
            SizedBox(height: 7),
            Row(
              children: [
                SizedBox(width: size.width * .03),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Edit profile",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter'))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: size.width * .03),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.language,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Language",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter'))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: size.width * .03),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Notification settings",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter'))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: size.width * .94,
              child: Row(
                children: [
                  SizedBox(width: size.width * .001),
                  Text("Customer support",
                      style: TextStyle(
                          color: Color.fromARGB(255, 131, 122, 122),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: 'Inter'))
                ],
              ),
            ),
            SizedBox(height: 7),
            Row(
              children: [
                SizedBox(width: size.width * .03),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.title_rounded,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Terms & conditions",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter'))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: size.width * .03),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.help_outline_rounded,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Browse FAQs",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter'))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: size.width * .03,
                ),
                Container(
                  width: size.width * .94,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                          SizedBox(width: 20),
                          Text("Support",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter'))
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Row(
              children: [
                SizedBox(width: size.width * .028),
                Container(
                    alignment: Alignment.center,
                    width: size.width * .945,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text("Log out",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )))),
              ],
            ),
          ],
        ),
      ),
      //bottom navigation bar

      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LiveOrders()));
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        'Orders',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.av_timer,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        'Order History',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        'Profile',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
