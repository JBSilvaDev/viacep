// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viacep_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ViacepController on ViacepControllerBase, Store {
  late final _$bairroAtom =
      Atom(name: 'ViacepControllerBase.bairro', context: context);

  @override
  String get bairro {
    _$bairroAtom.reportRead();
    return super.bairro;
  }

  @override
  set bairro(String value) {
    _$bairroAtom.reportWrite(value, super.bairro, () {
      super.bairro = value;
    });
  }

  late final _$cepAtom =
      Atom(name: 'ViacepControllerBase.cep', context: context);

  @override
  String get cep {
    _$cepAtom.reportRead();
    return super.cep;
  }

  @override
  set cep(String value) {
    _$cepAtom.reportWrite(value, super.cep, () {
      super.cep = value;
    });
  }

  late final _$localidadeAtom =
      Atom(name: 'ViacepControllerBase.localidade', context: context);

  @override
  String get localidade {
    _$localidadeAtom.reportRead();
    return super.localidade;
  }

  @override
  set localidade(String value) {
    _$localidadeAtom.reportWrite(value, super.localidade, () {
      super.localidade = value;
    });
  }

  late final _$ufAtom = Atom(name: 'ViacepControllerBase.uf', context: context);

  @override
  String get uf {
    _$ufAtom.reportRead();
    return super.uf;
  }

  @override
  set uf(String value) {
    _$ufAtom.reportWrite(value, super.uf, () {
      super.uf = value;
    });
  }

  late final _$dddAtom =
      Atom(name: 'ViacepControllerBase.ddd', context: context);

  @override
  String get ddd {
    _$dddAtom.reportRead();
    return super.ddd;
  }

  @override
  set ddd(String value) {
    _$dddAtom.reportWrite(value, super.ddd, () {
      super.ddd = value;
    });
  }

  late final _$atualizaEnderecoAsyncAction =
      AsyncAction('ViacepControllerBase.atualizaEndereco', context: context);

  @override
  Future<Map<String, dynamic>> atualizaEndereco(String cep) {
    return _$atualizaEnderecoAsyncAction.run(() => super.atualizaEndereco(cep));
  }

  @override
  String toString() {
    return '''
bairro: ${bairro},
cep: ${cep},
localidade: ${localidade},
uf: ${uf},
ddd: ${ddd}
    ''';
  }
}
