import 'package:flutter/material.dart';
import 'package:flutter_niko2/model/country.dart';

class CountryDetaill extends StatelessWidget {
  final Country selectCountry;
  const CountryDetaill({required this.selectCountry, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      // appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            title: Text(
              selectCountry.countryDetail,
            ),
            backgroundColor: Colors.purple,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/" + selectCountry.capitalPicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(
                selectCountry.countryCapital,
                style: TextStyle(fontSize: 24, color: Colors.grey.shade800),
              ),
            ),
          )
        ],
      ),
    );
  }
}
