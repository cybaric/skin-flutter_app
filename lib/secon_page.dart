import 'package:flutter/material.dart';

class SeconPage extends StatelessWidget {
  final int y = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(color: Colors.yellow[50],
              width: 360,
              height: 640,
              child: ListView(
                children: <Widget>[
                  tombol(100, Colors.brown[16 * y], Colors.brown[y],
                      Colors.brown[2 * y], Colors.brown[14 * y]),
                  tombol(80, Colors.blue[800], Colors.blue[50],
                      Colors.blue[100], Colors.blue[700]),
                  tombol(100, Colors.purple[800], Colors.purple[50],
                      Colors.purple[100], Colors.purple[700]),
                  tombol(60, Colors.green[800], Colors.green[50],
                      Colors.green[100], Colors.green[700]),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('kembali')),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Center tombol(
      double x, Color color2, Color color1, Color color4, Color color3) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(margin: EdgeInsets.all(10),
            height: 2 * x,
            width: 2 * x,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(x),
                gradient: LinearGradient(
                    colors: [color1, color2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),
          Container(
            margin: EdgeInsets.all(x/2 + 10),
            height: x,
            width: x,
            child: Icon(
              Icons.adb_outlined,
              color: color2,
              size: x / 2,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(x / 2),
                gradient: LinearGradient(
                    colors: [color3, color4],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),
        ],
      ),
    );
  }
}
