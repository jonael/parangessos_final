class Rolebean {
  Rolebean({
    int? idRole,
    String? roleName,}){
    _idRole = idRole;
    _roleName = roleName;
  }

  Rolebean.fromJson(dynamic json) {
    _idRole = json['idRole'];
    _roleName = json['roleName'];
  }
  int? _idRole;
  String? _roleName;

  int? get idRole => _idRole;
  String? get roleName => _roleName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['idRole'] = _idRole;
    map['roleName'] = _roleName;
    return map;
  }
}