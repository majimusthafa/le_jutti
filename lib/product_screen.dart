import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ProductScreen extends StatefulWidget {
  static const String id = 'product_screen';
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<String> _listItem = [
    'assets/juttii.png',
    'assets/juttii.png',
    'assets/juttii.png',
    'assets/juttii.png',
    'assets/juttii.png',
    'assets/juttii.png',
    'assets/juttii.png',
    'assets/juttii.png',
    'assets/juttii.png',
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold(
    //bottomNavigationBar: CurvedNavigationBar(
    //  backgroundColor: Colors.transparent,
    //  buttonBackgroundColor: Colors.brown,
    //  color: Colors.brown,
    //  animationCurve: Curves.easeInOut,
    //  animationDuration: Duration(milliseconds: 600),
    //  height: 50,
    //  items: <Widget>[
    //    Icon(Icons.add, size: 30),
    //     Icon(Icons.list, size: 30),
    //    Icon(Icons.compare_arrows, size: 30),
    //  ],
    //  onTap: (index) {
    //Handle button tap
    // },
    //  ),
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFdbdde0),
            Color(0xffffffff),
            Color(0xFFdbdde0),
            Color(0xffffffff),
            Color(0xFFdbdde0),
            Color(0xffffffff),
            Color(0xFFdbdde0),
          ],
        ),
      ),
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/jutti1.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent),
                        child: Center(
                            child: Text(
                          "Shop Now",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listItem
                      .map((item) => Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            color: Colors.white,
                            elevation: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(item),
                                      fit: BoxFit.cover)),
                              child: Transform.translate(
                                offset: Offset(50, -50),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 65, vertical: 63),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    //   );
  }
}
