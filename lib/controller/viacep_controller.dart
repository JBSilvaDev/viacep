import 'package:buscacep/repositories/viacep_repository.dart';
import 'package:mobx/mobx.dart';

part 'viacep_controller.g.dart';

class ViacepController = ViacepControllerBase with _$ViacepController;

abstract class ViacepControllerBase with Store {
  var viaCep = ViacepRepository();
  @observable
  String bairro = '';

  @action
  atualizaEndereco(String cep) async {
    final bairroCep = await viaCep.buscarCep(cep);
    bairro = bairroCep;
  }
}
