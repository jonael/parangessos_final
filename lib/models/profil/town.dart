class Townbean {
    Townbean({
        int? idTown,
        String? townName,
        String? townCp,}){
        _idTown = idTown;
        _townName = townName;
        _townCp = townCp;
    }

    Townbean.fromJson(dynamic json) {
        _idTown = json['idTown'];
        _townName = json['townName'];
        _townCp = json['townCp'];
    }
    int? _idTown;
    String? _townName;
    String? _townCp;

    int? get idTown => _idTown;
    String? get townName => _townName;
    String? get townCp => _townCp;

    Map<String, dynamic> toJson() {
        final map = <String, dynamic>{};
        map['idTown'] = _idTown;
        map['townName'] = _townName;
        map['townCp'] = _townCp;
        return map;
    }
}