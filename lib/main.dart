import 'package:flutter/material.dart';
import 'package:image/screens/homescreen.dart';
import 'package:provider/provider.dart';

import 'helpers/imagesprovider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ 
        ChangeNotifierProvider.value(value: ImagesProvider()),
      ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
        title: 'Coruscate Task',
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            primaryColor: Colors.black,
            backgroundColor: Colors.black,
            canvasColor: Colors.black,
            accentColor: Colors.yellow,
            brightness: Brightness.dark,
            visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}
