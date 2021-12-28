/// idUser : "4"
/// idNotification : "2"
/// statutNotification : "0"

class Activer {
  Activer({
      int? idUser,
      int? idNotification,
      int? statutNotification,}){
    _idUser = idUser;
    _idNotification = idNotification;
    _statutNotification = statutNotification;
}

  Activer.fromJson(dynamic json) {
    _idUser = json['idUser'];
    _idNotification = json['idNotification'];
    _statutNotification = json['statutNotification'];
  }
  int? _idUser;
  int? _idNotification;
  int? _statutNotification;

  int? get idUser => _idUser;
  int? get idNotification => _idNotification;
  int? get statutNotification => _statutNotification;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['idUser'] = _idUser;
    map['idNotification'] = _idNotification;
    map['statutNotification'] = _statutNotification;
    return map;
  }

}