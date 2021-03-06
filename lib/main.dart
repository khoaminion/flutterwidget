import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var text = ['00', '00', '00', '00', '00', '00'];
  void delay() {
    Timer(Duration(seconds: 0), () {
      btntaped();
      Timer(Duration(milliseconds: 200), () {
        btntaped();
        Timer(Duration(milliseconds: 200), () {
          btntaped();
          Timer(Duration(milliseconds: 200), () {
            btntaped();
            Timer(Duration(milliseconds: 200), () {
              btntaped();
              Timer(Duration(milliseconds: 200), () {
                btntaped();
                Timer(Duration(milliseconds: 200), () {
                  btntaped();
                  Timer(Duration(milliseconds: 200), () {
                    btntaped();
                    Timer(Duration(milliseconds: 200), () {
                      btntaped();
                      Timer(Duration(milliseconds: 200), () {
                        btntaped();
                      });
                    });
                  });
                });
              });
            });
          });
        });
      });
    });
  }

  void ani() {
    delay();
  }

  void btntaped() {
    var random = Random();

    var numberList = [];
    while (numberList.length < 6) {
      int random_number = random.nextInt(55);
      String alo = '';
      if (random_number < 10) {
        alo = '0' + random_number.toString();
      } else {
        alo = random_number.toString();
      }

      if (!numberList.contains(alo)) {
        numberList.add(alo);
      }
    }

    setState(() {
      for (int i = 0; i < 6; i++) {
        text[i] = numberList[i];
      }
    });
  }

  bool _light = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'hello',
        theme: _light
            ? ThemeData(brightness: Brightness.dark)
            : ThemeData(brightness: Brightness.light),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Lottery app'),
            actions: [
              Switch(
                  value: _light,
                  onChanged: (state) {
                    setState(() {
                      _light = state;
                    });
                  }),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LUCKY NUMBER",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(bottom: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          margin: const EdgeInsets.all(3.0),
                          padding: const EdgeInsets.all(10.0),
                          decoration:
                              myBoxDecoration(), //             <--- BoxDecoration here
                          child: Text(
                            text[0],
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          margin: const EdgeInsets.all(3.0),
                          padding: const EdgeInsets.all(10.0),
                          decoration:
                              myBoxDecoration(), //             <--- BoxDecoration here
                          child: Text(
                            text[1],
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          margin: const EdgeInsets.all(3.0),
                          padding: const EdgeInsets.all(10.0),
                          decoration:
                              myBoxDecoration(), //             <--- BoxDecoration here
                          child: Text(
                            text[2],
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          margin: const EdgeInsets.all(3.0),
                          padding: const EdgeInsets.all(10.0),
                          decoration:
                              myBoxDecoration(), //             <--- BoxDecoration here
                          child: Text(
                            text[3],
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          margin: const EdgeInsets.all(3.0),
                          padding: const EdgeInsets.all(10.0),
                          decoration:
                              myBoxDecoration(), //             <--- BoxDecoration here
                          child: Text(
                            text[4],
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          margin: const EdgeInsets.all(3.0),
                          padding: const EdgeInsets.all(10.0),
                          decoration:
                              myBoxDecoration(), //             <--- BoxDecoration here
                          child: Text(
                            text[5],
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                      onPressed: ani,
                      child: Text('tap for lucky number'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                          onPrimary: Colors.white)),
                )
              ],
            ),
          ),
        ));
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(width: 4.0, color: Colors.red),
      borderRadius: BorderRadius.all(
          Radius.circular(30) //                 <--- border radius here
          ),
    );
  }
}
