import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
          child : new ListView(
              shrinkWrap: true,
              children : [
                Container(child: Image.asset('assets/images/header.png')),
                GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    primary: true,
                    padding : EdgeInsets.all(20.0),
                    children : <Widget>[
                      MyMenu( title : "Kurikulum", icon: Icons.account_balance, color :  Colors.brown,link : '/program_studi'),
                      MyMenu( title : "Informasi", icon: Icons.info_outline, color :  Colors.blue, link : '/informasi'),
                      MyMenu( title : "Alumni", icon: Icons.school, color :  Colors.orange , link : '/alumni'),
                      MyMenu( title : "Dosen", icon: Icons.person_pin, color :  Colors.blueGrey, link : '/dosen'),
                      MyMenu( title : "Prospek Kerja", icon: Icons.work, color :  Colors.blueGrey, link : '/prospek'),
                      MyMenu( title : "Struktur Pimpinan", icon: Icons.admin_panel_settings, color :  Colors.brown, link : '/pimpinan'),


                    ]

                )]
          )
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.


      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class MyMenu extends StatelessWidget{
  MyMenu({required this.title, required this.icon, required this.color, required this.link});
  final String title;
  final IconData icon;
  final String link;
  final MaterialColor color;
  @override
  Widget build(BuildContext context){
    return Card(
        child : InkWell(
            onTap : (){
              Navigator.pushNamed(context, link);
            },
            splashColor : Colors.green,
            child : Center (
                child : Column (
                    mainAxisSize: MainAxisSize.min,
                    children : <Widget> [
                      Icon(icon, size : 70.0, color : color),
                      Text(title, style : new TextStyle (fontSize : 17.0)),

                    ]

                )
            )
        )
    );
  }
}