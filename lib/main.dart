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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'hello',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Lottery app'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 1),
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
                        padding: const EdgeInsets.only(bottom: 1),
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
                        padding: const EdgeInsets.only(bottom: 1),
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
                        padding: const EdgeInsets.only(bottom: 1),
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
                        padding: const EdgeInsets.only(bottom: 1),
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
                        padding: const EdgeInsets.only(bottom: 1),
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
                      onPressed: btntaped, child: Text('tap for lucky number')),
                )
              ],
            ),
          ),
        ));
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(width: 3.0, color: Colors.red),
      borderRadius: BorderRadius.all(
          Radius.circular(30) //                 <--- border radius here
          ),
    );
  }
}
