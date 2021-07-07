import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var bulbcolor = Colors.yellow[300];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Demo',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: bulbcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(35),
            ),
          ),
        ),
        body: Container(
          alignment: Alignment(0.0, 0.0),
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Icon(
                Icons.lightbulb_sharp,
                size: 180.0,
                color: bulbcolor,
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    bulbcolor = Colors.green[400];
                  });
                },
                child: Text('Green'),
                style: ElevatedButton.styleFrom(
                    primary: bulbcolor,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 43, vertical: 15),
                    shape: StadiumBorder(),
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      letterSpacing: 1,
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    bulbcolor = Colors.red[400];
                  });
                },
                child: Text('Red'),
                style: ElevatedButton.styleFrom(
                    primary: bulbcolor,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: StadiumBorder(),
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      letterSpacing: 1.2,
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    bulbcolor = Colors.blue[400];
                  });
                },
                child: Text('Blue'),
                style: ElevatedButton.styleFrom(
                    primary: bulbcolor,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 47, vertical: 15),
                    shape: StadiumBorder(),
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      letterSpacing: 1.1,
                    )),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35),
              topLeft: Radius.circular(35),
            ),
            color: bulbcolor,
          ),
          height: 100,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(70, 10, 70, 30),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Custom Colour'),
            style: ElevatedButton.styleFrom(
                primary: bulbcolor,
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: StadiumBorder(),
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                  letterSpacing: 1.1,
                )),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              bulbcolor = Colors.yellow[300];
            });
          },
          backgroundColor: bulbcolor,
          child: Icon(
            Icons.refresh,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
