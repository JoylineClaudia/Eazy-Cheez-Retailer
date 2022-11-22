import 'dart:convert';

import 'package:eazy_cheez_retail/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class LiveOrders extends StatefulWidget {
  const LiveOrders({Key? key}) : super(key: key);

  @override
  State<LiveOrders> createState() => _LiveOrdersState();
}

class _LiveOrdersState extends State<LiveOrders> {
  //final scaffoldKey = GlobalKey<ScaffoldState>();
  List<dynamic> _users = [];
  Future loadUserList() async {
    var res = await http.get(Uri.https("dummyjson.com", "users"));
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);
      if (jsonData['users'].isNotEmpty) {
        setState(() {
          _users = jsonData['users'];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    loadUserList();
    return Scaffold(
      //key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFA3C834),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              ' EAZY',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              ' CHEEZ',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
        // centerTitle: false,
        // elevation: 2,
      ),

      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 10.0,
              ),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 172,
                        child: Image.network(
                          _users[index]['image'],
                          fit: BoxFit.cover,
                        ),
                        // decoration: BoxDecoration(
                        //   color: Color(0xFFF6F6F6),
                        // ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5, 14, 0, 10),
                                child: Text(
                                  'Live orders',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //item section
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    _users[index]['firstName'],
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Details   ",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  ">   ",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ]),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5, 2, 0, 0),
                                    child: Text(
                                      _users[index]['lastName'],
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 11,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 150,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _users.length,
                                  itemBuilder: ((context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 15.0,
                                          vertical: 10.0,
                                        ),

                                        // children: <Widget>[

                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 5, 2, 5),
                                              child: Container(
                                                height: 70,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFF6F6F6),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                                child: Image.network(
                                                  _users[index]['image'],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(2.0),
                                              child: Text(
                                                _users[index]['firstName'],
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(0.0),
                                              child: Text(
                                                _users[index]['phone'],
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 9,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              )
                            ],
                          ),

                          //item secton 2
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    _users[index]['firstName'],
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Details   ",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  ">   ",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ]),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5, 2, 0, 0),
                                    child: Text(
                                      _users[index]['lastName'],
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 11,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 150,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _users.length,
                                  itemBuilder: ((context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 15.0,
                                          vertical: 10.0,
                                        ),

                                        // children: <Widget>[

                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 5, 2, 5),
                                              child: Container(
                                                height: 70,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFF6F6F6),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                                child: Image.network(
                                                  _users[index]['image'],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(2.0),
                                              child: Text(
                                                _users[index]['firstName'],
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(0.0),
                                              child: Text(
                                                _users[index]['phone'],
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 9,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              )
                            ],
                          ),
                          //item section 3
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    _users[index]['firstName'],
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Details   ",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  ">   ",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ]),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5, 2, 0, 0),
                                    child: Text(
                                      _users[index]['lastName'],
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 11,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 150,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _users.length,
                                  itemBuilder: ((context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 15.0,
                                          vertical: 10.0,
                                        ),

                                        // children: <Widget>[

                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 5, 2, 5),
                                              child: Container(
                                                height: 70,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFF6F6F6),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                                child: Image.network(
                                                  _users[index]['image'],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(2.0),
                                              child: Text(
                                                _users[index]['firstName'],
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(0.0),
                                              child: Text(
                                                _users[index]['phone'],
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 9,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              )
                            ],
                          ),
                          //item section 4
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    _users[index]['firstName'],
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Details   ",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  ">   ",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ]),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5, 2, 0, 0),
                                    child: Text(
                                      _users[index]['lastName'],
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 11,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 150,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _users.length,
                                  itemBuilder: ((context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 15.0,
                                          vertical: 10.0,
                                        ),

                                        // children: <Widget>[

                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 5, 2, 5),
                                              child: Container(
                                                height: 70,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFF6F6F6),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                                child: Image.network(
                                                  _users[index]['image'],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(2.0),
                                              child: Text(
                                                _users[index]['firstName'],
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(0.0),
                                              child: Text(
                                                _users[index]['phone'],
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 9,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              )
                            ],
                          ),
                          //item section end
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
      //child: GestureDetector(
      //onTap: () => FocusScope.of(context).unfocus(),

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
              padding: EdgeInsets.all(1.0),
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
                      padding: EdgeInsets.all(1.0),
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
              padding: EdgeInsets.all(1.0),
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
                      padding: EdgeInsets.all(1.0),
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
              padding: EdgeInsets.all(1.0),
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
                      padding: EdgeInsets.all(1.0),
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
