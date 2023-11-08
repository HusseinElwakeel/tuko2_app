import 'package:flutter/material.dart';
import 'package:tuko_app/component/Category%20Widget.dart';
import 'package:tuko_app/screens/NumbersScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff3d9),
      appBar: AppBar(
        backgroundColor: Color(0xff412e28),
        title: Center(
          child: Text(
            "Tuko App",
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
              text: "Numbers",
              color: Color(0xfff19031),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Numbers(),
                    ));
              }),
          Category(
              text: "Family Members", color: Color(0xff538036), onTap: () {}),
          Category(
            text: "Colors",
            color: Color(0xff7d3fa2),
            onTap: () {},
          ),
          Category(text: "Phrases", color: Color(0xff48a6cc), onTap: () {}),
          // Container(
          //   padding: EdgeInsets.only(left: 20),
          //   alignment: Alignment.centerLeft,
          //   height: 50,
          //   width: double.infinity,
          //   color: Color(0xfff19031),
          //   child: Text(
          //     "Numbers",
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 20,
          //     ),
          //   ),
          // ),
          // Container(
          //   alignment: Alignment.centerLeft,
          //   padding: EdgeInsets.only(left: 20),
          //   width: double.infinity,
          //   color: Color(0xff538036),
          //   height: 50,
          //   child: Text(
          //     "Family Members",
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 20
          //     ),
          //   ),
          // ),
          // Container(
          //   alignment: Alignment.centerLeft,
          //   color: Color(0xff7d3fa2),
          //   height: 50,
          //   width: double.infinity,
          //   padding: EdgeInsets.only(left: 20),
          //   child: Text("Colors",
          //   style: TextStyle(
          //     fontSize: 20,
          //     color: Colors.white,
          //   ),
          //   ),
          // ),
          // Container(
          //   padding: EdgeInsets.only(left: 20),
          //   width: double.infinity,
          //   height: 50,
          //   alignment: Alignment.centerLeft,
          //   color: Color(0xff48a6cc),
          //   child: Text(
          //     "Phrases",
          //     style: TextStyle(
          //        color: Colors.white,
          //       fontSize: 20,
          //     ),
          //   ),
          // ),
          //
        ],
      ),
    );
  }
}
