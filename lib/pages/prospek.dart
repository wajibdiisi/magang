import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class ProspekPage extends StatefulWidget {
  ProspekPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyInformationState createState() => _MyInformationState();
}

class _MyInformationState extends State<ProspekPage> {
  @override
  Widget build(BuildContext context) {
    final title = 'Prospek Kerja Jurusan Ilmu Politik';
    final List<String> prospek = [
      'Petugas Hakim Hukum Administratif, Juri, dan Sidang',
      'Asisten Legal dan Paralegal',
      'Peneliti Politik',
      'Penyiar Berita',
      'Dosen Ilmu Politik',
      'Pegawai Yudisial',
      'Analisis Intelijen',
      'Direktur Manajemen Darurat',
      'Wartawan',
      'Konsultan Publik',
      'Kepala Daerah',
      'Anggota Parlemen',
      'Pimpinan Instansi Pemerintah',
      'Tenaga Ahli di bidang Politik',
      'Politisi',
      'Manajer Kampanye',
      'Advokat',
      'Pemberdayaan Masyarakat',
      'Pengolah Data',
    ];
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.

          elevation: 0.0,
          title: Text(widget.title),
          titleSpacing: 10.0,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            ),
          ),
        ),
        // No appbar provided to the Scaffold, only a body with a
        // CustomScrollView.
        body: CustomScrollView(

          slivers: <Widget>[
            // Add the app bar to the CustomScrollView.

            // Next, create a SliverList
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that
                // displays the index of the current item.
                    (context, index) =>
                        Card(
                            child : ListTile(title: Text(prospek[index]))),
                // Builds 1000 ListTiles
                childCount: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
