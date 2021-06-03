// @dart=2.10
import 'package:flutter/material.dart';

/// This is the main application widget.
class SemesterPage extends StatefulWidget {
  final String title;
  final int semester;


  SemesterPage(this.title, this.semester);

  @override
  MyRecordState createState() => MyRecordState();
}
class MyRecordState extends State<SemesterPage>{

  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.

          elevation: 1.0,
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
        body: MyStatelessWidget(widget.semester),
      ),
    );
  }
}
/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget(this.data);
  final int data;
  void checkData(int data){
  }


  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> listOfColumns = [];
    if(this.data == 1){
      listOfColumns = [
        {"Name": "Agama ", "Number": "2 SKS"},
        {"Name": "Pancasila dan Kewarganegaraan", "Number": "2 SKS"},
        {"Name": "Bahasa Indonesia", "Number": "2 SKS"},
        {"Name": "Bahasa Inggris", "Number": "2 SKS"},
        {"Name": "Olah Kreativitas dan Kewirausahaan", "Number": "3 SKS"},
        {"Name": "Dasar-dasar Ilmu Sosial ", "Number": "3 SKS"},
        {"Name": "Dasar-dasar Ilmu Politik", "Number": "3 SKS"},
        {"Name": "Filsafat Ilmu", "Number": "2 SKS"},

      ];
    }else if (this.data == 2){
      listOfColumns = [
        {"Name": "Statistik Sosial", "Number": "3 SKS"},
        {"Name": "Metodologi Ilmu Politik", "Number": "3 SKS"},
        {"Name": "Teori Politik Klasik", "Number": "3 SKS"},
        {"Name": "Teori Politik Modern dan Kontemporer", "Number": "3 SKS"},
        {"Name": "Ideologi Politik", "Number": "3 SKS"},
        {"Name": "Matakuliah Pilihan", "Number": "3 SKS"},
        {"Name": "\t\t\tBahasa Korea", "Number": " "},
        {"Name": "\t\t\tBahasa Tiongkok", "Number": " "},
        {"Name": "\t\t\tBahasa Jepang", "Number": " "}

      ];
    }else if (this.data == 3){
      listOfColumns = [
        {"Name": "Konstitusi dan Kelembagaan Negara ", "Number": "3 SKS"},
        {"Name": "Pemikiran Politik Indonesia", "Number": "3 SKS"},
        {"Name": "Demokrasi dan Demokratisasi", "Number": "3 SKS"},
        {"Name": "Teori Kebijakan Publik", "Number": "3 SKS"},
        {"Name": "Isu-isu Kontemporer Kebijakan Publik", "Number": "3 SKS"},
        {"Name": "Teori dan Metode Politik Perbandingan", "Number": "3 SKS"},
        {"Name": "Metode Penelitian Kuantitatif", "Number": "3 SKS"},

      ];
    }
    else if (this.data == 4){
      listOfColumns = [
        {"Name": "Politik Birokrasi ", "Number": "3 SKS"},
        {"Name": "Civil Society", "Number": "3 SKS"},
        {"Name": "Partai Politik dan Pemilu", "Number": "3 SKS"},
        {"Name": "Komunikasi Politik", "Number": "3 SKS"},
        {"Name": "Sistem Politik Negara-negara di Asia Pasifik", "Number": "3 SKS"},
        {"Name": "Hubungan Sipil-Militer di Negara-negara Asia Pasifik", "Number": "3 SKS"},
        {"Name": "Metode Penelitian Kualitatif", "Number": "3 SKS"},

      ];
    }
    else if (this.data == 5){
      listOfColumns = [
        {"Name": "Magang Kelembagaan Negara", "Number": "3 SKS"},
        {"Name": "Perubahan Sosial", "Number": "3 SKS"},
        {"Name": "Perbandingan Pembangunan Politik", "Number": "3 SKS"},
        {"Name": "Kebijakan Luar Negeri", "Number": "3 SKS"},
        {"Name": "Teori Ekonomi Politik", "Number": "3 SKS"},
        {"Name": "Ekonomi Politik Global", "Number": "3 SKS"},
        {"Name": "Kepemerintahan Global", "Number": "3 SKS"},
        {"Name": "Politik dan Keamanan Global", "Number": "3 SKS"},

      ];
    }
    else if (this.data == 6){
      listOfColumns = [
        {"Name": "Ekonomi Politik Indonesia", "Number": "3 SKS"},
        {"Name": "Keuangan Publik Pusat dan Daerah", "Number": "3 SKS"},
        {"Name": "Isu-isu Global Kontemporer", "Number": "3 SKS"},
        {"Name": "Politik Identitas", "Number": "3 SKS"},
        {"Name": "Seminar Kapita Selekta Ilmu Politik", "Number": "3 SKS"},
        {"Name": "Reading Course", "Number": "3 SKS"},
        {"Name": "Kuliah Kerja Nyata", "Number": "3 SKS"},
        {"Name": "Matakuliah Pilihan", "Number": "3 SKS"},
        {"Name": "\t\t\tPolitik Lokal", "Number": " "},
        {"Name": "\t\t\tPolitik Lingkungan", "Number": " "},
        {"Name": "\t\t\tPolitik Gender", "Number": " "},
        {"Name": "\t\t\tPolitik Islam", "Number": " "},

      ];
    }
    else if (this.data == 7){
      listOfColumns = [
        {"Name": "Seminar Desain Penelitian", "Number": "4 SKS"},
        {"Name": "Kolokium/Penelaahan Naskah ", "Number": "3 SKS"},
        {"Name": "Ujian Komprehensif", "Number": "4 SKS"},
        {"Name": "Skripsi", "Number": "6 SKS"},


      ];
    }
    return DataTable(
      columnSpacing: 80.0,
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Nama',
          ),
        ),
        DataColumn(
          label: Text(
            'SKS',
          ),
        ),

      ],
      rows:
      listOfColumns.map(
        ((element) => DataRow(
          cells: <DataCell>[
            DataCell(Text(element["Name"])), //Extracting from Map element the value
            DataCell(Text(element["Number"])),
          ],
        )),
      )
          .toList(),
    );

  }
}