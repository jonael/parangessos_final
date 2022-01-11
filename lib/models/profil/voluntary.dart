class Voluntarybean {
  Voluntarybean({
    int? idNotification,
    String? notificationName,
    int? statutNotification}){
    _idNotification = idNotification;
    _notificationName = notificationName;
    _statutNotification = statutNotification;
  }

  Voluntarybean.fromJson(dynamic json) {
    _idNotification = json['idNotification'];
    _notificationName = json['notificationName'];
    _statutNotification = json['statutNotification'];
  }
  int? _idNotification;
  String? _notificationName;
  int? _statutNotification;

  int? get idNotification => _idNotification;
  String? get notificationName => _notificationName;
  int? get statutNotification => _statutNotification;

  set statutNotification(statutNotification) => _statutNotification = statutNotification;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['idNotification'] = _idNotification;
    map['notificationName'] = _notificationName;
    map['statutNotification'] = _statutNotification;
    return map;
  }
}