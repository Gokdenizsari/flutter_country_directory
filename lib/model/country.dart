class Country {
  final String _countryId;
  final String _countryDetail;
  final String _countryCapital;
  final String _countryPicture;
  final String _capitalPicture;

get countryId => this._countryId;
get countryDetail => this._countryDetail;
get countryCapital => this._countryCapital;
get countryPicture => this._countryPicture;
get capitalPicture => this._capitalPicture;

 

  Country(this._countryId, this._countryDetail, this._countryCapital,
      this._countryPicture, this._capitalPicture);

  @override
  String toString() {
    return "$_countryId  - $_countryPicture";
  }
}
