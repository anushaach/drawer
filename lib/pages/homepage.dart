import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'firstdrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Firstdrawer()),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
        backgroundColor: Color.fromARGB(255, 74, 220, 184),
        title: Center(
          child: Text(
            "Shopping App",
            style: TextStyle(color: Colors.black),
          ),
        ),
        // title: TextButton(onPressed: () {}, child: Text("Shopping App"))),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 700,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              // child: Image.asset(
              //   'images/fire.jpg',
              //   fit: BoxFit.cover,
              // ),
              child: CarouselSlider(
                items: [
                  Container(
                    child: Image.asset(
                      'images/fire.jpg',
                      fit: BoxFit.cover,
                    ),
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  Container(
                    height: 400,
                    child: Image.asset(
                      'images/2.jpg',
                      fit: BoxFit.fill,
                    ),
                    width: 800,
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'images/fire.jpg',
                      fit: BoxFit.fill,
                    ),
                    width: 800,
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'images/3.jpg',
                      fit: BoxFit.fill,
                    ),
                    width: 800,
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
                options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn),
              ),
            ),
          ],

          // Row(
          //   children: [
          //     Container(
          //       height: 120,
          //       width: 150,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20),
          //           color: Color.fromARGB(255, 229, 225, 214)),
          //       child: Row(
          //         children: [
          //           // Icon(Icons.favorite),
          //           // CircleAvatar(
          //           //   backgroundImage: AssetImage(
          //           //     'images/anu1.jpg',
          //           //   ),
          //           //   radius: 30,
          //           // ),
          //         ],
          //       ),
          //     ),
          //   ],
          // )
        ),
      ),
    );
  }
}
