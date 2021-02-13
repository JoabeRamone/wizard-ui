import 'package:flutter/material.dart';

class SegundaPagina extends StatefulWidget {
  @override
  _SegundaPaginaState createState() => _SegundaPaginaState();
}

class _SegundaPaginaState extends State<SegundaPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Procurar seu Banco'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  'Dados Pessoais',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ],
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Selecione seu Banco',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Tipo de Conta',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Agência',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Número da Conta',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Bandeira',
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: FlatButton(
              minWidth: 200,
              color: Colors.blue,
              height: 42,
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text(
                'Salvar',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.transparent, width: 2, style: BorderStyle.solid), borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}
