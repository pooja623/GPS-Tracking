

import 'package:flutter/material.dart';
import 'package:gpstracking/google_map_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(
          create: (context) => LocationProvider(),
          child: GoogleMapPage(),
          )
      ],
      child:MaterialApp(
      title: 'Flutter Demo',
      home: GoogleMapPage(),
    ),
    );
  }
}

