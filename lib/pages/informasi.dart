// @dart=2.10
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "GRID dan HERO",
    home: new InformationPage(),
  ));
}

class InformationPage extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<InformationPage> {
  List<Container> daftarSuperhero = new List();

  var karakter = [
    {"nama": "Profil", "gambar": "gedung.jpg" , "message" : "Program studi Ilmu Politik Fakultas Ilmu Sosial dan Ilmu Politik (FISIP) Unpad bertujuan untuk mendidik mahasiswanya agar memiliki pemahaman yang komprehensif tentang nature dan struktur dari Ilmu Politik dalam berbagai bidang yaitu Teori Politik, Politik dan Pemerintahan Indonesia, Administrasi dan Kebijakan Publik, Politik Perbandingan, Ekonomi Politik, Hubungan Internasional dan atau Politik Dunia, dan Globalisasi. Program studi ini juga membantu meningkatkan kepekaan mahasiswa terhadap isu-isu politik sehari-hari guna membangun kesadaran sebagai warga negara dan warga dunia."},
    {"nama": "Sejarah", "gambar": "gedung.jpg" , "message" : ""
        "\t\t\t\t\t\tProgram Studi Ilmu Politik Universitas Padjadjaran secara resmi berdiri pada tahun 2012 dengan ijin operasional berdasarkan"
        "Surat Keputusan Mendiknas Nomor 385/E/O/2012 dan mulai menerima mahasiswa baru pada tahun ajaran 2013/2014.\n\n"
        "\t\t\t\t\t\tPada tahun 2014 Program Studi Ilmu Politik melaksanakan akreditasi pertama dan memperoleh peringkat B berdasarkan Surat Keputusan BAN PT No. 478/SK/BAN-PT/Akred/S/XII/2014.\n\n"
        "\n"
        "\t\t\t\t\t\tPada tahun 2015, Visi dan misi program studi mengalami perubahan seiring dengan perubahan pada Renstra Universitas (2015-2019; 2020-2024)"
        " dan Fakultas (2015-2019; 2020-2024).\n\n"
        "\t\t\t\t\t\tSaat ini, Program Studi Sarjana Ilmu Politik telah terakreditasi BAN-PT dengan nilai akreditasi A (Periode 23 Oktober 2019 s.d. 23 Oktober 2024)."},
    {"nama": "Himpunan", "gambar": "hima.png" , "message" : ""
        "\t\t\t\t\t\t Himpunan Mahasiswa Program Studi Ilmu Politik Universitas Padjadjaran atau disingkat HMPS IPOL UNPAD"
        "Merupakan organisasi mahasiswa Ilmu Politik di tingkat jurusan\n\n"
        "Visi HMPS IPOL UNPAD\n"
        "Mewujudkan Himpunan Mahasiswa Program Studi Ilmu Politik Fakultas Ilmu Sosial dan Ilmu Politik Universitas Padjdjaran yang aspiratif, reflektif, gotong royong dan eksis dalam berbagai elemen kampus serta masyarakat."
        "\nMisi \n\n"
        "\n\t\t\t\t\t\t1.Membuka ruang atau wadah aspirasi mahasiswa dan civitas akademika Program Studi Ilmu Politik"
        "\n\t\t\t\t\t2.Merespon secara aktif isu yang sedang berkembang dalam lingkup kemahasiswaan dan kemasyarakatan."
        "\n\t\t\t\t\t3.Mewujudkan mahasiswa HMPS IPOL FISIP UNPAD yang memiliki jiwa kekeluargaan dan gotong royong."
        "\n\t\t\t\t\t4.Menciptakan HMPS IPOL FISIP UNPAD yang dikenal baik , dan dapat beperan aktif untuk kegiatan di dalam dan di luar UNPAD serta masyarakat sekitar."},
    {"nama": "Visi", "gambar": "gedung.jpg" , "message" : "“Menjadi pengelola pendidikan tinggi yang memiliki komitmen terhadap keunggulan riset dalam Ilmu Politik dan memiliki daya saing pada tingkat nasional, regional dan Internasional pada tahun 2024”"},
    {"nama": "Misi", "gambar": "gedung2.jpg", "message" : "\t\t\t\t\t\tMengembangkan kurikulum pendidikan yang berbasis riset dan mampu mengikuti perkembangan jaman "
        "untuk memenuhi tuntutan masyarakat, pengguna jasa pendidikan tinggi serta menghasilkan lulusan yang memiliki kompetensi di bidang politik."
        "\n\n\t\t\t\t\t\tMengembangkan penelitian dan mempublikasikan hasil penelitian yangmenitikberatkan kepada isu-isu politik dalam lingkup lokal, nasional, "
        "regional dan internasional."
        "\n\n\t\t\t\t\t\tMelaksanakan pengabdian kepada masyarakat guna menopang pembelajaran dan kemajuan ilmu pengetahuan, teknologi dan seni bagi komunitas akademik, pemerintah, industri dan masyarakat\n\nMengembangkan tata kelola pendidikan berdasarkan prinsip good governance.\n\nMenjalin hubungan kerjasama strategis dengan masyarakat, pemerintah, bisnis dan industri, institusi pendidikan, serta perguruan tinggi lain baik didalam negeri maupun luar negeri secara berkesinambungan dengan menerapkan prinsip kesetaraan, kemitraan dan saling percaya."},
    {"nama": "Kompetensi", "gambar2": "gedung.jpg", "message" :
      "KOMPETENSI UTAMA"
          "\n\tMemahami konsep-konsep utama, berbagai perspektif teoritis, temuan-temuan empiris, dan tren sejarah perkembangan Ilmu Politik"
          "\n\tMemahami kekuatan sosial, kultur, sejarah, geografis dan kekuatan lainnya yang memunculkan konflik didalam dan antar kelompok-kelompok masyarakat"
          "\n\tMemahami berbagai isu dan  kebijakan yang mempengaruhi demokrasi dan distribusi kekuasaan"
          "\n\tMemahami dasar filosofis dan perkembangan berbagai  pemikiran politik klasik, modern dan kontemporer"
          "\n\tMampu mengaplikasikan dasar-dasar metode penelitian"
          "\n\nKOMPETENSI PENDUKUNG"
          "\n\tSikap Obyektif"
          "\n\tSikap Kritis"
          "\n\tKepemimpinan"
          "\n\tSikap nasionalis"
          "\n\tKemampuan Analisa"
          "\n\tKemampuan berkomunikasi Lisan dan Tulisan"
          "\n\tMemahami proses pembuatan keputusan"
          "\n\tKepekaan terhadap isu sosial politik"
          "\n\tKeterampilan negosiasi dan lobi politik"
          "\n\tNetworking"
          "\n\tKemampuan manajerial"
          "\n\tKeterampilan Advokasi"
          "\n\nKOMPETENSI PENUNJANG"
          "\n\tKemampuan Menggunakan ICT"
          "\n\tKemampuan berbahasa asing"
          "\n\tLiteracy information"
    },
    {"nama": "Profil Lulusan", "gambar": "gedung.jpg", "message" : "Profesi : Asisten Peneliti"
    "\nMampu mengumpulkan, mengolah dan menyajikan data hasil penelitian tentang sistem "
    "demokrasi di negara-negara Asia Pasifik"
    "\n\nProfesi : Pelaksana pada lembaga-lembaga negara"
    "\n"
    "Mampu menerapkan konsep-konsep politik dalam sistem organisasi pemerintahan dan lembaga-lembaga negara"
    "\n\nAktivis Sosial Kemasyarakatan"
    "\n"
    "Mampu berperan untuk memberdayakan masyarakat sehingga mampu berpartisipasi dalam kehidupan berbangsa dan bernegara  "
    "\n\nProfesi : Konsultan Politik dan kebijakan"
    "\n"
    "Mampu berperan sebagai fasilitator dalam proses kebijakan (formulasi, implementasi, dan evaluasi)"},

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
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new Detail(
                                nama: karakternya['nama'],
                                gambar: gambar,
                                text : karakternya['message'],
                              ),
                            )),
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