import 'package:flutter/material.dart';

class PrimeiraPagina extends StatefulWidget {
  @override
  _PrimeiraPaginaState createState() => _PrimeiraPaginaState();
}

class _PrimeiraPaginaState extends State<PrimeiraPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Página'),
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
                labelText: 'Nome Completo',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Telefone',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Data Nascimento',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Endereço',
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
