// @dart=2.10
import 'package:ilmu_politik/data/users.dart';
import 'package:ilmu_politik/model/user.dart';
import 'package:flutter/material.dart';
class SusunanPimpinan extends StatefulWidget {
  @override
  DataTableWidgetState createState() => DataTableWidgetState();
}

class DataTableWidgetState extends State<SusunanPimpinan> {
  bool ascending;

  @override
  void initState() {
    super.initState();

    ascending = false;
  }

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar : AppBar(title : const Text('Susunan Pimpinan Jurusan Ilmu Politik')),
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

  Widget buildDataTable(){
    List<Map<String, String>> listOfColumns = [
      {"Photo": "ratnia.jpg", "Nama": "Dr. Ratnia Sholihah, S.IP., M.Si.","Jabatan" : "Ketua Program Sarjana Ilmu Politik", "Gelar" : "S1 – Ilmu Pemerintahan \nS2 – Ilmu Politik\nS3 – Ilmu Politik"},
      {"Photo": "mudiyati.jpg", "Nama": "Dra. Mudiyati Rahmatunisa, M.A., Ph.D.","Jabatan" : "Ketua Program Magister Ilmu Politik", "Gelar" : "S1 – Ilmu Pemerintahan \nS2 – Public Policy \nS3 – Asian Studies and Political Science"},
      {"Photo": "caroline.png", "Nama": "Dr. Caroline Paskarina, S.IP., M.Si.","Jabatan" : "Ketua Departemen Ilmu Politik", "Gelar" : "S1 – Ilmu Pemerintahan\nS2 – Ilmu Politik\nS3 – Ilmu Politik"},
    ];
      return DataTable(
    columnSpacing: 20.0,
    dataRowHeight : 400,
    sortAscending: ascending,
    sortColumnIndex: 0,
    columns: const <DataColumn>[
      DataColumn(
        label: Text(
          'Photo',
        ),
      ),
      DataColumn(
        label: Text(
          'Nama',
        ),
      ),
      DataColumn(
        label: Text(
          'Jabatan',
        ),
      ),
      DataColumn(
        label: Text(
          'Bidang Keahlian',
        ),
      ),

    ],
    rows: listOfColumns.map(
      ((element) => DataRow(
        cells: <DataCell>[
          DataCell((Container(
              width : 200,
              height : 400,
              child :  Image.asset(
                "assets/images/${element["Photo"]}",
                width : 200,
                height : 400,
                fit: BoxFit.fill,
              )
          ))), //Extracting from Map element the value

          DataCell(Text(element["Nama"])),
          DataCell(Text(element["Jabatan"])),
          DataCell(Text(element["Gelar"])),
        ],
      )),
    )
        .toList(),
  );

  void onSortColumn({int columnIndex, bool ascending}) {
    if (columnIndex == 0) {
      setState(() {
        if (ascending) {
          cities.sort((a, b) => a.name.compareTo(b.name));
        } else {
          cities.sort((a, b) => b.name.compareTo(a.name));
        }
        this.ascending = ascending;
      });
    }
  }
}}