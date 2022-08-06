import 'package:flutter/material.dart';
import 'package:flutter_niko2/country_item.dart';
import 'package:flutter_niko2/data/county_detail.dart';
import 'package:flutter_niko2/model/country.dart';

class CountryList extends StatelessWidget {
  late List<Country> allCountry = [];
  CountryList() {
    allCountry = dateSource();
    print(dateSource());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Country List"),
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return CountryItem(
            ListCountry: allCountry[index],
          );
        },
        itemCount: allCountry.length,
      )),
    );
  }

  List<Country> dateSource() {
    List<Country> interim = [];

    for (int i = 0; i < 10; i++) {
      var countryId = Strings.Country_Id[i];
      var countryCapital = Strings.Country_Capital[i];
      var countryDetail = Strings.Country_Detail[i];
      var countryPicture = Strings.Country_Id[i].toLowerCase() + "${i + 1}.jpg";
      var capitalPicture =
          Strings.Country_Capital[i].toLowerCase() + "_buyuk" + "${i + 1}.jpg";

      Country addcountry = Country(countryId, countryCapital, countryDetail,
          countryPicture, capitalPicture);
      interim.add(addcountry);
    }
    return interim;
  }
}
