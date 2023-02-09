// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vpn/country.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Vpn',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text_afterconnection = "Press The Connect Button To Connect To VPN";
  String _textcountry = "Connect";
  String _selectedCountry = "India";
  ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
    backgroundColor: const Color.fromRGBO(91, 143, 185, 1),
    elevation: 3.0,
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
  );
  int connectbtn = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      // _text_afterconnection = "red";
      if (connectbtn % 2 == 0) {
        style = ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20),
          backgroundColor: Colors.red,
          elevation: 3.0,
          shape: CircleBorder(),
          padding: EdgeInsets.all(24),
          shadowColor: Colors.black,
          // visualDensity: VisualDensity(horizontal: 20.0, vertical: 2.0)
        );
        _textcountry = "Connected";
      } else {
        style = ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20),
          backgroundColor: Colors.blueGrey,
          elevation: 3.0,
          shape: CircleBorder(),
          padding: EdgeInsets.all(24),
        );
        _textcountry = "Connect";
      }
      connectbtn = connectbtn + 1;
    });
  }
  // _countryButton() {
  //   // setState(() {
  //   return style = ElevatedButton.styleFrom(
  //     textStyle: const TextStyle(fontSize: 40),
  //     padding: EdgeInsetsGeometry.lerp(
  //         EdgeInsetsDirectional.all(10.0), EdgeInsetsDirectional.all(8.0), 2.0),
  //     backgroundColor: Colors.blueGrey,
  //   );
  //   // });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: const Color.fromRGBO(182, 234, 218, 1),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Welcome To My VPN"),
        backgroundColor: const Color.fromRGBO(48, 30, 103, 2),
        actions: [
          IconButton(
            icon: const Icon(Icons.location_city_outlined),
            tooltip: 'Select Country',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return countrysel();
              }));
            },
          ),
          // const Text("Country"),
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   _text_afterconnection,
            //   style: const TextStyle(
            //     fontSize: 18,
            //   ),
            // ),
            // Container(
            //   child: const Text("here comes the photo"),
            // ),
            // Container(
            //   transformAlignment: Alignment.bottomCenter,
            //   child: ElevatedButton(
            //     onPressed: _incrementCounter,
            //     // onFocusChange: (value) => (_countryButton()),
            //     style: style,
            //     child: Text(_textcountry),
            //   ),
            // ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Status",
                        style: TextStyle(
                          color: Color.fromRGBO(91, 143, 185, 1),
                          fontSize: 24.0,
                        ),
                      ),
                      Text(
                        _textcountry,
                        style: const TextStyle(
                          color: Color.fromRGBO(3, 0, 28, 1),
                          fontSize: 23.0,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "Connected To",
                        style: TextStyle(
                          color: Color.fromRGBO(91, 143, 185, 1),
                          fontSize: 24.0,
                        ),
                      ),
                      Text(
                        _selectedCountry,
                        style: const TextStyle(
                          color: Color.fromRGBO(3, 0, 28, 1),
                          fontSize: 23.0,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 250,
              height: 250,
              child: SizedBox(
                  width: 250.0,
                  child: ElevatedButton(
                    onPressed: _incrementCounter,
                    child: Text(_textcountry),
                    style: style,
                  )),
              // child: InkWell(
              //   borderRadius: BorderRadius.circular(100),
              //   onTap: _incrementCounter,
              //   child: Container(

              //     color: const Color.fromRGBO(91, 143, 185, 1),
              //     width: 300,
              //     alignment: Alignment.center,
              //     child: Text(_textcountry),
              //   ),
              // ),
            ),
            Expanded(
              flex: 7,
              child: countrysel(),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   child: const Text("Connect"),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
