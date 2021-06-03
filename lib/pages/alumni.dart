// @dart=2.10
import 'package:flutter/material.dart';

/// This is the main application widget.
class AlumniPage extends StatefulWidget {
  AlumniPage({Key key}) : super(key: key);

  @override
  MyRecordState createState() => MyRecordState();
}
class MyRecordState extends State<AlumniPage>{

  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.

          elevation: 1.0,
          title: Text('Alumni'),
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
        body: MyStatelessWidget(),
      ),
    );
  }
}
/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    return Scaffold(

        body : LayoutBuilder(
          builder : (BuildContext context, BoxConstraints constraints){
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: width * 1.8,
                child: ListView(
                  children: <Widget>[
                    buildDataTable(),
                  ],
                ),
              ),
            );
          },
        )
    );
  }
  Widget buildDataTable() {
    List<Map<String, String>> listOfColumns = [
        {"NPM": "170810130048", "Nama": "Ricky Puji Firdaus","Yudisium" : "Pujian", "Judul" : "Strategi Kampanye Dalam Pemenangan Dadang Naser dan Gun Gun Gunawan Pemilihan Kepala Daerah Tahun 2015 di "
            "Kabupaten Bandung"},
      {"NPM": "170810130035", "Nama": "Mawar Juwita Riana Simandjuntak","Yudisium" : "Pujian", "Judul" : "Peran United Nations Women Dalam Perumusan Program Pembangunan Keseteraan Gender Di Indonesia Tahun 2015-2019"},
      {"NPM": "170810130067", "Nama": "Iis Jamilah","Yudisium" : "Pujian", "Judul" : "Peran Solidarity Of Muslimah For Al-quds Retaken Isu Perjuangan Kemerdekaan Palestina Di Universitas Padjadjaran"},
      {"NPM": "170810130009", "Nama": "Rina Dwi Purnita","Yudisium" : "Sangat Memuaskan", "Judul" : "Gerakan Penegakan HAM Melalui Aksi Kamisan di Kota"},
      {"NPM": "170810130038", "Nama": "Merry Handayani Tumanggor","Yudisium" : "Sangat Memuaskan", "Judul" :
          "Peran Civil Society Organization Dalam Pemilihan Umum Kepala Daerah Studi Kasus Pada Gerakan Cimahi Memilih di Pemilihan Walikota Cimahi Tahun 2017"},
      {"NPM": "170810130045", "Nama": "Ranti Aviani Putri","Yudisium" : "Sangat Memuaskan", "Judul" :
      "Komunikasi Politik Anggota DPRD Kota Bandung Tahun 2017 Dengan Konstituennya"},
      {"NPM": "170810130038", "Nama": "Merry Handayani Tumanggor","Yudisium" : "Sangat Memuaskan", "Judul" :
      "Peran Civil Society Organization Dalam Pemilihan Umum Kepala Daerah Studi Kasus Pada Gerakan Cimahi Memilih di Pemilihan Walikota Cimahi Tahun 2017"},
      {"NPM": "170810130062", "Nama": "	Mohammad Fazrulzaman Azmi","Yudisium" : "Pujian", "Judul" :
      "Pembentukan Koalisasi Partai Politik Pendukung Ajay-Ngatiyana Pada Pilkada Kota Cimahi Tahun 2017"},
      {"NPM": "170810130053", "Nama": "Weni Dwi Handayani","Yudisium" : "Sangat Memuaskan", "Judul" :
      "Perilaku Tidak Memilih Masyarakat Pada Pilkada 2015. Studi Pada Desa Cangkuang Kulon Kecamatan Dayeuh Kolot Kabupaten Bandung"},
      {"NPM": "170810130052", "Nama": "	Annisa Istianingsih","Yudisium" : " Sangat Memuaskan","Judul" :
      "Proses Terbentuknya Kelompok Relawan Dalam Pemilihan Kepala Daerah Studi Kasus Teman Ahok Pada Pilgub"},
      {"NPM": "170810130039", "Nama": "Christian Deswinta","Yudisium" : "Pujian", "Judul" :
      "	Strategi Politik Partai Persatuan Indonesia (Perindo) (Studi Pada Perwujudan Platform Partai Pemanfaatan Program Pengembangan Usaha Mikro Kecil Menen"
          "gah Gerobak Perindo Periode 2015-2017"},
      {"NPM": "170810130043", "Nama": "Hardy Ramadhani","Yudisium" : "Sangat Memuaskan", "Judul" :
      "Partisipasi Politik Di Kalangan Mahasiswa Program Studi Ilmu Politik UniversitasPadjadjaran"},








      ];

    return DataTable(
      columnSpacing: 15.0,
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'NPM',
          ),
        ),
        DataColumn(
          label: Text(
            'Nama',
          ),
        ),
        DataColumn(
          label: Text(
            'Yudisium',
          ),
        ),
        DataColumn(
          label: Text(
            'Judul',
          ),
        ),

      ],
      rows:
      listOfColumns.map(
        ((element) => DataRow(
          cells: <DataCell>[
            DataCell(Text(element["NPM"])), //Extracting from Map element the value
            DataCell(Text(element["Nama"])),
            DataCell(Text(element["Yudisium"])),
            DataCell(Text(element["Judul"])),
          ],
        )),
      )
          .toList(),
    );

  }
}