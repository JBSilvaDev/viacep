import 'package:buscacep/models/modelo.dart';
import 'package:http/http.dart' as http;

class ViacepRepository {
  Future<Map<String, dynamic>> buscarCep(String cep) async {
    var uri = Uri.parse('https://viacep.com.br/ws/$cep/json/');
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var data = Modelo.fromJson(response.body);
      var mapCity = data.toMap();
      return mapCity;
    }
    return {};
  }
}
