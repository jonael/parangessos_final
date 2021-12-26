class Voluntarybean {
  Voluntarybean({
    int? idNotification,
    String? notificationName,}){
    _idNotification = idNotification;
    _notificationName = notificationName;
  }

  Voluntarybean.fromJson(dynamic json) {
    _idNotification = json['idNotification'];
    _notificationName = json['notificationName'];
  }
  int? _idNotification;
  String? _notificationName;

  int? get idNotification => _idNotification;
  String? get notificationName => _notificationName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['idNotification'] = _idNotification;
    map['notificationName'] = _notificationName;
    return map;
  }
}