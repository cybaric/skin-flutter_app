import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skin/secon_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('halaman satu'),
        ),
        body: Center(
          child: Container(
              height: 520,
              width: 360,
              decoration: BoxDecoration(color: Colors.yellow[50]),
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple[50],
                        child: Container(
                            padding: EdgeInsets.all(10),
                            width: 340,
                            height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.purple[50],
                                      Colors.purple[800]
                                    ])),
                            child: Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.purple[600],
                                        Colors.purple[200]
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight)),
                              child: Container(
                                margin: EdgeInsets.all(3),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                      Colors.purple[400],
                                      Colors.purple[300]
                                    ])),
                                child: Material(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(50),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    focusColor: Colors.brown[600],
                                    splashColor: Colors.greenAccent,
                                    child: Center(
                                        child: Text(
                                      'Kembali',
                                      style: TextStyle(
                                          color: Colors.purple[800],
                                          fontWeight: FontWeight.w700),
                                    )),
                                  ),
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      tombol(Colors.brown[50], Colors.brown[800],
                          Colors.brown[600], Colors.brown[100], 'Tombol'),
                      SizedBox(
                        height: 20,
                      ),
                      tombol(Colors.green[50], Colors.green[800],
                          Colors.green[600], Colors.green[100], 'Simpan'),
                      SizedBox(
                        height: 50,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 5,
                        color: Colors.purple[500],
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.purple[300]),
                            margin: EdgeInsets.all(3),
                            width: 200,
                            height: 40,
                            child: Material(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(10),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return SeconPage();
                                  }));
                                },
                                splashColor: Colors.green,
                                child: Center(
                                    child: Text(
                                  'tombol',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            )),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }

  Material tombol(
    Color color1,
    Color color2,
    Color color3,
    Color color4,
    String text,
  ) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      color: color1,
      child: Container(
          padding: EdgeInsets.all(30),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [color1, color2])),
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(
                    colors: [color3, color4],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: Material(
              borderRadius: BorderRadius.circular(100),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {},
                focusColor: Colors.brown[600],
                splashColor: Colors.white,
                child: Center(
                    child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 20, color: color2, fontWeight: FontWeight.w700),
                )),
              ),
            ),
          )),
    );
  }
}
