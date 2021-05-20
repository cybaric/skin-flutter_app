import 'package:flutter/material.dart';
import 'package:skin/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  double lk(BuildContext context) => MediaQuery.of(context).size.width * 2 / 3;
  double lb(BuildContext context) => MediaQuery.of(context).size.width * 7 / 8;
  double tg(BuildContext context) => MediaQuery.of(context).size.height;
  double lbr(BuildContext context) => MediaQuery.of(context).size.width;
  String dbl(BuildContext context) =>
      MediaQuery.of(context).size.width.toString();
  String ti(BuildContext context) =>
      MediaQuery.of(context).size.height.toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: tg(context),
            width: lbr(context),
            color: Colors.cyanAccent,
          ),
          Positioned(
            right: -lk(context) / 3,
            top: -lk(context) / 3,
            child: Container(
              width: lk(context),
              height: lk(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.purple, Colors.greenAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            left: -lb(context) / 5,
            top: -lb(context) / 3,
            child: Container(
              width: lb(context),
              height: lb(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.greenAccent, Colors.purpleAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            right: -lk(context) / 2 - 100,
            bottom: -lk(context) / 2 + 150,
            child: Container(
              width: tg(context) * 5 / 7,
              height: tg(context) * 5 / 7,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green[100]),
            ),
          ),
          Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 100),
              child: Text(
                'Lebar hp anda ' + dbl(context),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontStyle: FontStyle.italic),
              )),
          Positioned(
              top: lk(context) - 20,
              child: Container(
                child: ListView(
                  children: <Widget>[
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                    texlis(context),
                  ],
                ),
                margin: EdgeInsets.all(10),
                height: tg(context) / 2 + 50,
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(color: Colors.transparent),
              )),
          Align(
              alignment: Alignment(0.8, 0.9),
              child: FloatingActionButton(
                  child: Icon(Icons.adb,color: Colors.white,size: 30,),
                  backgroundColor: Colors.pinkAccent,
                  elevation: 5,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FirstPage();
                    }));
                  }))
        ],
      ),
    );
  }

  Center texlis(BuildContext context) {
    return Center(
        child: Container(
            margin: EdgeInsets.all(5),
            width: 800,
            height: 40,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.green],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              margin: EdgeInsets.all(3),
              color: Colors.white,
              child: Center(
                  child: Text(
                'tinggi hp anda adalah ' + ti(context),
                style: TextStyle(color: Colors.purpleAccent, fontSize: 20),
              )),
            )));
  }
}
