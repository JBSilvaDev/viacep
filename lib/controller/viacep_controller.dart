import 'package:buscacep/repositories/viacep_repository.dart';
import 'package:mobx/mobx.dart';

part 'viacep_controller.g.dart';

class ViacepController = ViacepControllerBase with _$ViacepController;

abstract class ViacepControllerBase with Store {
  var viaCep = ViacepRepository();
  @observable
  String bairro = '';
  @observable
  String cep = '';
  @observable
  String localidade = '';
  @observable
  String uf = '';
  @observable
  String ddd = '';

  @action
  Future<Map<String, dynamic>> atualizaEndereco(String cep) async {
    final endereco = await viaCep.buscarCep(cep);

    bairro = endereco["bairro"];
    localidade = endereco["localidade"];
    uf = endereco["uf"];
    ddd = endereco["ddd"];
    cep = endereco["cep"];

    return endereco;
  }
}
