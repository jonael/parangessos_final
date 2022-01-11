import 'package:parangessos_final/models/profil/role.dart';
import 'package:parangessos_final/models/profil/town.dart';
import 'package:parangessos_final/models/profil/voluntary.dart';

class Userbean {
    Userbean({
        int? idUser,
        String? pseudo,
        String? mail,
        String? photoUrl,
        String? firstName,
        String? name,
        int? age,
        String? phone,
        String? since,
        int? shareInfos,
        Townbean? town,
        List<Rolebean>? roles,
        List<Voluntarybean>? voluntary,}){
        _idUser = idUser;
        _pseudo = pseudo;
        _mail = mail;
        _photoUrl = photoUrl;
        _firstName = firstName;
        _name = name;
        _age = age;
        _phone = phone;
        _since = since;
        _shareInfos = shareInfos;
        _town = town;
        _roles = roles;
        _voluntary = voluntary;
    }

    Userbean.fromJson(dynamic json) {
        _idUser = json['idUser'];
        _pseudo = json['pseudo'];
        _mail = json['mail'];
        _photoUrl = json['photoUrl'];
        _firstName = json['firstName'];
        _name = json['name'];
        _age = json['age'];
        _phone = json['phone'];
        _since = json['since'];
        _shareInfos = json['shareInfos'];
        _town = json['town'] != null ? Townbean.fromJson(json['town']) : null;
        if (json['roles'] != null) {
            _roles = [];
            json['roles'].forEach((v) {
                _roles?.add(Rolebean.fromJson(v));
            });
        }
        if (json['voluntary'] != null) {
            _voluntary = [];
            json['voluntary'].forEach((v) {
                _voluntary?.add(Voluntarybean.fromJson(v));
            });
        }
    }
    int? _idUser;
    String? _pseudo;
    String? _mail;
    String? _photoUrl;
    String? _firstName;
    String? _name;
    int? _age;
    String? _phone;
    String? _since;
    int? _shareInfos;
    Townbean? _town;
    List<Rolebean>? _roles;
    List<Voluntarybean>? _voluntary;

    int? get idUser => _idUser;
    String? get pseudo => _pseudo;
    String? get mail => _mail;
    String? get photoUrl => _photoUrl;
    String? get firstName => _firstName;
    String? get name => _name;
    int? get age => _age;
    String? get phone => _phone;
    String? get since => _since;
    int? get shareInfos => _shareInfos;
    Townbean? get town => _town;
    List<Rolebean>? get roles => _roles;
    List<Voluntarybean>? get voluntary => _voluntary;

    set shareInfos(shareInfos) => _shareInfos = shareInfos;

    Map<String, dynamic> toJson() {
        final map = <String, dynamic>{};
        map['idUser'] = _idUser;
        map['pseudo'] = _pseudo;
        map['mail'] = _mail;
        map['photoUrl'] = _photoUrl;
        map['firstName'] = _firstName;
        map['name'] = _name;
        map['age'] = _age;
        map['phone'] = _phone;
        map['since'] = _since;
        map['shareInfos'] = _shareInfos;
        if (_town != null) {
            map['town'] = _town?.toJson();
        }
        if (_roles != null) {
            map['roles'] = _roles?.map((v) => v.toJson()).toList();
        }
        if (_voluntary != null) {
            map['voluntary'] = _voluntary?.map((v) => v.toJson()).toList();
        }
        return map;
    }
}