import 'package:flutter/material.dart';

class TerceiraPagina extends StatefulWidget {
  @override
  _TerceiraPaginaState createState() => _TerceiraPaginaState();
}

class _TerceiraPaginaState extends State<TerceiraPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terceira Página'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  'Metas Financeiras',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ],
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Tipo de Meta',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor Inicial',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor por mês',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor Anual',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Observações',
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
