import 'package:carousel_slider/carousel_slider.dart';
import 'package:cukcat_v20_1_0/constants/material_color_white.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CUKCAT",
          style: TextStyle(color: Colors.blue[900]),
        ),
        bottomOpacity: 0,
        backgroundColor: Colors.grey[50],
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey[50],
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 14.0),
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(
                      color: Colors.grey[300],
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 14.0),
                  width: 170,
                  height: 170,
                  child: GridView.count(
                    primary: false,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(
                            color: Colors.grey[300],
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(
                            color: Colors.grey[300],
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(
                            color: Colors.grey[300],
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(
                            color: Colors.grey[300],
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
//            Container(color: Colors.amber, width: 100, height: 100),
            CarouselSlider(
              height: 400.0,
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                          horizontal: 5.0,
                          vertical: 20.0,
                        ),
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(
                            color: Colors.grey[300],
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
