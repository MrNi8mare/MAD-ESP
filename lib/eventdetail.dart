class eventdetail{
  String _name='';
  String _description='';
  String _image='';
  var _latitude='';
  var _longitude='';

  eventdetail(this._name, this._description, this._image, this._latitude,
      this._longitude);

  String get longitude => _longitude;

  set longitude(String value) {
    _longitude = value;
  }

  String get latitude => _latitude;

  set latitude(String value) {
    _latitude = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}