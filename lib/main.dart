import 'package:flutter/material.dart';
import 'package:ilmu_politik/pages/homepage.dart';
import 'package:ilmu_politik/pages/dosen.dart';
import 'package:ilmu_politik/pages/program_studi.dart';
import 'package:ilmu_politik/pages/prospek.dart';
import 'package:ilmu_politik/pages/informasi.dart';
import 'package:ilmu_politik/pages/alumni.dart';
import 'package:ilmu_politik/pages/susunanPimpinan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute : '/home',
          routes : {
    '/home' : (context) => MyHomePage(title : 'Ilmu Politik'),
    '/dosen' : (context) => DosenPage(),
    '/prospek' : (context) => ProspekPage(title : 'Prospek Kerja'),
    '/informasi' : (context) => InformationPage(),
     '/program_studi' : (context) => ProgramStudi(),
     '/alumni' : (context) => AlumniPage(),
     '/pimpinan' : (context) => SusunanPimpinan(),

    }
    );
  }
}



