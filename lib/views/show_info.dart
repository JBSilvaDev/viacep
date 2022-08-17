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
  var ufBR = 'ba.png';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var cepEC = ModalRoute.of(context)?.settings.arguments as String;
      await controller.atualizaEndereco(cepEC);
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
          title:  Text('Busca do cep: ${ModalRoute.of(context)?.settings.arguments as String}'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
            builder: (context) => ListView(
              shrinkWrap: true,
              children: [
                
                Image(image: AssetImage('assets/imgs/$ufBR')),

                Center(child: Text('Bairro: ${controller.bairro}', style: TextStyle(fontSize: 35, ),)),
                SizedBox(height: 20,),
                Center(child: Text('Municipio: ${controller.localidade}', style: TextStyle(fontSize: 35, ))),
                Center(child: Text('Estado: ${controller.uf}', style: TextStyle(fontSize: 35, ))),
                Center(child: Text('DDD Local: ${controller.ddd}', style: TextStyle(fontSize: 35, ))),
                ],
            ),
          ),
          ]
        ),);
  }
}
