import 'package:flutter/material.dart';

class HomeFind extends StatefulWidget {

  const HomeFind({ Key? key }) : super(key: key);

  @override
  State<HomeFind> createState() => _HomeFindState();
}

class _HomeFindState extends State<HomeFind> {
   final cepEC = TextEditingController();

   @override

   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Busca CEP'),),
           body: Column(
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
                // final bairroCep = await buscarCep(cepEC.text);

                // Chamei o setState para atualizar o estado (variavel bairro) com o dado vindo do viacep
                // setState(() {
                //   bairro = bairroCep;
                // });
              },
              child: Text('Buscar Cep'),
            ),
            // Coloquei o bairro aqui
            // Text(bairro)
          ],
        ),
    );
  }
}
