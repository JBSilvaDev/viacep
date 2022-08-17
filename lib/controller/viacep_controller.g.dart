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

  late final _$ViacepControllerBaseActionController =
      ActionController(name: 'ViacepControllerBase', context: context);

  @override
  void atualizaEndereco(String cep) {
    final _$actionInfo = _$ViacepControllerBaseActionController.startAction(
        name: 'ViacepControllerBase.atualizaEndereco');
    try {
      return super.atualizaEndereco(cep);
    } finally {
      _$ViacepControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
bairro: ${bairro}
    ''';
  }
}
