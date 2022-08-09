import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:tirkeme1/ekinchi_bet.dart';

import 'package:flutter/material.dart';

import 'package:tirkeme1/tapwyrma.dart';

class Tirkeme extends StatelessWidget {
  const Tirkeme({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Tapwyrma(
        key: null,
      ),
    );
  }
}

class Tapwyrma extends StatefulWidget {
  const Tapwyrma({required Key key}) : super(key: key);

  @override
  State<Tapwyrma> createState() => _TapwyrmaState();
}

class _TapwyrmaState extends State<Tapwyrma> {
  int _counter = 4;
  void _azaituu() {
    setState(() {
      _counter--;
    });
  }

  void _koboituu() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var kelgenSan;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: const Center(
            child: Text("Tapwyrma01",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400))),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EkinchiBet(
                          kelgenSan: _counter,
                        ))),
            child: Container(
              //color: Color(0xff46F3F3),
              height: 48.0,
              width: 294.0,
              decoration: const BoxDecoration(
                  color: Color(0xff46F3F3),
                  //border:Border.all()
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )),
              child: Center(
                child: Text(
                  "Сан:$_counter",
                  style: const TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  _azaituu();
                },
                child: Container(
                    height: 44.0,
                    width: 69.0,
                    decoration: BoxDecoration(
                        color: const Color(0xff005EA6),
                        borderRadius: BorderRadius.circular(10.0)),
                    //  color:const  Color(0xff005EA6),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                width: 40.0,
              ),
              GestureDetector(
                onTap: () {
                  _koboituu();
                },
                child: Container(
                  height: 44.0,
                  width: 69.0,
                  decoration: BoxDecoration(
                      color: const Color(0xff005EA6),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class EkinchiBet {}
