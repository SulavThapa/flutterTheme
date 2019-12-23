import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:themes/Horizontal.dart';
//import 'package:themes/UIImageData.dart';

void main() => runApp(MyApp());

//Using Bloc
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.darkThemeEnabled,
      initialData: false,
      builder: (context, snapshot) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: snapshot.data
              ? ThemeData.dark()
              : ThemeData(
                  primaryColor: Colors.white,
                  brightness: Brightness.light,
                ),
          home: HomePage(snapshot.data)),
    );
  }
}

class HomePage extends StatelessWidget {
  final bool darkThemeEnabled;

  HomePage(this.darkThemeEnabled);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Icon(
            Icons.notifications,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Container(
        child: design(),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Change into Dark Theme"),
              trailing: Switch(
                value: darkThemeEnabled,
                onChanged: bloc.changeTheme,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Bloc {
  final _themeController = StreamController<bool>();
  get changeTheme => _themeController.sink.add;
  get darkThemeEnabled => _themeController.stream;
}

final bloc = Bloc();

Widget design() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(left: 30.0, top: 25.0, right: 130.0),
        child: Text(
          'Where are you going?',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(25.0),
        color: Colors.grey[300],
        height: 50.0,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 12),
              child: Icon(Icons.location_on, size: 28, color: Colors.grey[800]),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'E:g: New York, United States',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
            )
          ],
        ),
      ),


      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 15),
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 15,
                        child: Container(
                          height: 120,
                          width: 160,
                          child: Image.asset('assets/images/1.jpg',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Text("Hotel 1"),
                      Text("This is a lovely hotel.")
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 15,
                        child: Container(
                          height: 120,
                          width: 160,
                          child: Image.asset('assets/images/2.jpg',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Text("Hotel 2"),
                      Text("This is a lovely hotel.")
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 15,
                        child: Container(
                          height: 120,
                          width: 160,
                          child: Image.asset('assets/images/3.jpg',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Text("Hotel 3"),
                      Text("This is a lovely hotel.")
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 15,
                        child: Container(
                          height: 120,
                          width: 160,
                          child: Image.asset('assets/images/4.jpg',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Text("Hotel 4"),
                      Text("This is a lovely hotel.")
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Column(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 15,
                        child: Container(
                          height: 120,
                          width: 160,
                          child: Image.asset('assets/images/5.jpg',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Text("Hotel 5"),
                      Text("This is a lovely hotel.")
                    ],
                  ),
                  SizedBox(
                    width: 13,
                  ),
                ],
              ),
            ),
                    
          ],
        ),
      ),

    
    ],

     
  );
}


