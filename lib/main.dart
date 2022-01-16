import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
////import 'game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _controller =
      TextEditingController(); //or TextEditingController _controller = TextEditingController().  var _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        ////padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
          child: Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0, bottom: 20),
                child: Column(

                  children: [

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'PIG WEIGHT',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.pinkAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'CALCULATOR',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.pinkAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image.asset('assets/images/pig.png', width: 400.0),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(children: [
                            Expanded(
                              //flex: 2,
                              child: Container(

                                  ////alignment: Alignment.centerLeft,
                                  color: Colors.white,
                                  height: 150,

                                  ///width: 10,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'LENGTH',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '(cm)',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            controller: _controller,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor:
                                                  Colors.white.withOpacity(0.7),
                                              ////border: OutlineInputBorder(),
                                              hintText: 'Enter length',
                                            ),
                                          ),
                                        )
                                      ])),
                            ),
                            Container(
                              ////color: Colors.blue,
                              height: 100,
                              width: 25,
                            ),
                            Expanded(
                              child: Container(

                                  color: Colors.white,
                                  height: 150,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'GIRTH',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '(cm)',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            controller: _controller,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor:
                                                  Colors.white.withOpacity(0.7),
                                              ////border: OutlineInputBorder(),
                                              hintText: 'Enter girth',
                                            ),
                                          ),
                                        )
                                      ])),
                            ),
                          ]),
                        ),
                        ElevatedButton(
                          child: Text('CALCULATE'),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink,
                          ),

                        ),],
                    )
                  ],

                ),
              ),

            ),
          ),
        ),
      ),
    );
  }
}
