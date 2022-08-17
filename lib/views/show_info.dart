import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../controller/viacep_controller.dart';

class ShowInfo extends StatefulWidget {
  const ShowInfo({Key? key}) : super(key: key);

  @override
  State<ShowInfo> createState() => _ShowInfoState();
}

class _ShowInfoState extends State<ShowInfo> {
  final controller = ViacepController();
  var ufName = 'br';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var cepEC = ModalRoute.of(context)?.settings.arguments as String;
      await controller.atualizaEndereco(cepEC);
      ufName = controller.uf.toLowerCase();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Busca do cep: ${ModalRoute.of(context)?.settings.arguments as String}'),
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (context) => ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: Image(image: AssetImage('assets/imgs/$ufName.png')),
                  ),
                  Center(
                      child: Text('Estado: ${controller.uf}',
                          style: const TextStyle(
                            fontSize: 20,
                          ))),
                          const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text('Municipio: ${controller.localidade}',
                          style: const TextStyle(
                            fontSize: 20,
                          ))),
                          const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text(
                    'Bairro: ${controller.bairro}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text('DDD Local: ${controller.ddd}',
                          style: const TextStyle(
                            fontSize: 20,
                          ))),
                ],
              ),
            ),
          ]),
    );
  }
}
