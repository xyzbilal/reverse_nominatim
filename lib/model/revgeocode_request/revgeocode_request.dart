class RevgeocodeRequest {
  final _format = "geocodejson";
  final double _lat;
  final double _lon;
  int _zoom;
  bool addressDetails;
  String language;

  set zoom(int value) {
    if (value > 18) {
      _zoom = 18;
      return;
    }
    if (value < 0) {
      _zoom = 0;
      return;
    }
    _zoom = value;
  }

  int get zoom => _zoom;

  String email;

  RevgeocodeRequest(
      {double lat,
      double lon,
      int zoom = 18,
      this.addressDetails = false,
      this.language,
      this.email})
      : this._lat = lat,
        this._lon = lon,
        this._zoom = zoom;

  String buildQueryString() {
    return "?format=$_format" +
        "&lat=$_lat&lon=$_lon" +
        "&addressdetails=${addressDetails ? 1 : 0}" +
        "&zoom=$zoom" +
        ((language != null && language.isNotEmpty)
            ? "&accept-language=$language"
            : "") +
        ((email != null && email.isNotEmpty) ? "&email=$email" : "");
  }
}
