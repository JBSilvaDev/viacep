import 'package:buscacep/controller/viacep_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeFind extends StatefulWidget {
  const HomeFind({Key? key}) : super(key: key);

  @override
  State<HomeFind> createState() => _HomeFindState();
}

class _HomeFindState extends State<HomeFind> {
  final cepEC = TextEditingController();
  final controller = ViacepController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Busca CEP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Image(image: AssetImage('assets/imgs/viaCep.png')),
            ),
            TextFormField(
              controller: cepEC,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: 'CEP',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                // Buscando o bairro e coloquei o await para esperar terminar
                controller.atualizaEndereco(cepEC.text);
              },
              child: Text('Buscar Cep'),
            ),
            // Coloquei o bairro aqui
            Observer(builder: (_) {
              return Text(controller.bairro);
            })
          ],
        ),
      ),
    );
  }
}
