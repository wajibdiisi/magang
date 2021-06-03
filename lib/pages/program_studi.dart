// @dart=2.10
import 'package:flutter/material.dart';
import 'package:ilmu_politik/pages/semester.dart';



class ProgramStudi extends StatefulWidget {

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<ProgramStudi> {
  List<Container> daftarSuperhero = new List();

  var karakter = [
    {"nama": "Semester 1", "gambar": "gedung.jpg" , "semester" : 1},
    {"nama": "Semester 2", "gambar": "gedung.jpg" , "semester" : 2},
    {"nama": "Semester 3", "gambar": "gedung.jpg" , "semester" : 3},
    {"nama": "Semester 4", "gambar": "gedung.jpg" , "semester" : 4},
    {"nama": "Semester 5", "gambar": "gedung.jpg" , "semester" : 5},
    {"nama": "Semester 6", "gambar": "gedung.jpg" , "semester" : 6},
    {"nama": "Semester 7", "gambar": "gedung.jpg" , "semester" : 7},


  ];

  _buatlist() async {
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      final String gambar = karakternya["gambar"];

      daftarSuperhero.add(new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
              child: new Column(
                children: <Widget>[
                  new Hero(
                    tag: karakternya['nama'],
                    child: new Material(
                      child: new InkWell(
                        onTap: () =>
                            Navigator.of(context).push
                              (MaterialPageRoute(builder: (context) =>
                                SemesterPage(karakternya["nama"],karakternya["semester"]))),
                        child: new Image.asset(
                          "assets/images/$gambar",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(10.0),
                  ),
                  new Text(
                    karakternya['nama'],
                    style: new TextStyle(fontSize: 20.0),
                  )
                ],
              ))));
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Informasi Ilmu Politik",
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarSuperhero,
      ),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar,this.text});
  final String nama;
  final String text;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 240.0,
              child: new Hero(
                tag: nama,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "assets/images/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          new BagianNama(
            nama: nama,
          ),
          new Keterangan(text),
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nama,
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                new Text(
                  "$nama\@gmail.com",
                  style: new TextStyle(fontSize: 17.0, color: Colors.grey),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
/*
class BagianIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Iconteks(
            icon: Icons.call,
            teks: "Call",
          ),
          new Iconteks(
            icon: Icons.message,
            teks: "Message",
          ),
          new Iconteks(
            icon: Icons.photo,
            teks: "Photo",
          ),
        ],
      ),
    );
  }
}
*/

class Iconteks extends StatelessWidget {
  Iconteks({this.icon, this.teks});
  final IconData icon;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new RichText(
          text: TextSpan(
              text : teks,
              style : TextStyle(
                  color : Colors.black,
                  fontSize : 20
              )
          )


      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  Keterangan(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            text,
            style: new TextStyle(fontSize: 18.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}