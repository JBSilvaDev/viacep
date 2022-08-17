// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class Modelo {
   String? cep;
  String? bairro;
  String? localidade;
  String? uf;
  String? ddd;
  Modelo({
    this.cep,
    this.bairro,
    this.localidade,
    this.uf,
    this.ddd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cep': cep,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ddd': ddd,
    };
  }

  factory Modelo.fromMap(Map<String, dynamic> map) {
    return Modelo(
      cep: map['cep'] != null ? map['cep'] as String : null,
      bairro: map['bairro'] != null ? map['bairro'] as String : null,
      localidade: map['localidade'] != null ? map['localidade'] as String : null,
      uf: map['uf'] != null ? map['uf'] as String : null,
      ddd: map['ddd'] != null ? map['ddd'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Modelo.fromJson(String source) => Modelo.fromMap(json.decode(source) as Map<String, dynamic>);
}
