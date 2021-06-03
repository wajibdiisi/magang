// @dart=2.10
import 'package:ilmu_politik/data/users.dart';
import 'package:ilmu_politik/model/user.dart';
import 'package:flutter/material.dart';
class DosenPage extends StatefulWidget {
  @override
  DataTableWidgetState createState() => DataTableWidgetState();
}

class DataTableWidgetState extends State<DosenPage> {
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
      appBar : AppBar(title : const Text('Informasi Dosen')),
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

  Widget buildDataTable() => DataTable(
    columnSpacing: 20.0,
    dataRowHeight : 250,
    sortAscending: ascending,
    sortColumnIndex: 0,
    columns: cityColumns
        .map(
          (String column) => DataColumn(
        label: Text(column),
        onSort: (int columnIndex, bool ascending) => onSortColumn(
            columnIndex: columnIndex, ascending: ascending),
      ),
    )
        .toList(),
    rows: cities
        .map((City city) => DataRow(
      cells: [
        DataCell((Container(
        width : 100,
        height : 200,
        child :  Image.asset(
        "assets/images/${city.photo}",
        width : 100,
        height : 200,
        fit: BoxFit.fill,
      )
    ))),
        DataCell(Text('${city.name}')),
        DataCell(Text('${city.nation}')),
        DataCell(Text('${city.population}')),
        DataCell(Text('${city.gelar}')),
      ],
    ))
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
}