import 'package:flutter/material.dart';
import 'package:flutter_niko2/model/country.dart';

class CountryItem extends StatelessWidget {
  final Country ListCountry;

  const CountryItem({required this.ListCountry, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          "assets/" + ListCountry.countryPicture,
          width: 64,
          height: 64,
        ),
        title: Text(ListCountry.countryId),
        subtitle: Text(ListCountry.countryCapital),
      ),
    );
  }
}
