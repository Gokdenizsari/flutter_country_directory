import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_niko2/country_detail.dart';
import 'package:flutter_niko2/model/country.dart';

class CountryItem extends StatelessWidget {
  final Country ListCountry;

  const CountryItem({required this.ListCountry, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Textstyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        color: Color.fromARGB(Random().nextInt(255), Random().nextInt(255),
            Random().nextInt(255), Random().nextInt(255)),
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) =>
                    CountryDetaill(selectCountry: ListCountry)),
              ),
            );
          },
          leading: Image.asset(
            "assets/" + ListCountry.countryPicture,
            width: 64,
            height: 64,
          ),
          title: Text(
            ListCountry.countryId,
            style: Textstyle.headline5,
          ),
        ),
      ),
    );
  }
}
