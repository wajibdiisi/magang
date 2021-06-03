// @dart=2.10
import 'package:meta/meta.dart';

class City {
  final String photo;
  final String name;
  final String nation;
  final String population;
  final String gelar;


  const City({
    @required this.photo,
    @required this.name,
    @required this.nation,
    @required this.population,
    @required this.gelar
  });
}