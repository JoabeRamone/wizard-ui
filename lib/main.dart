import 'package:flutter/material.dart';
import 'package:wizard_ui/TerceiraPagina.dart';

import 'PrimeiraPagina.dart';
import 'SegundaPagina.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDadosPessoal = false;
  bool isBanco = false;
  bool isMetas = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wizard UI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: isDadosPessoal
                        ? Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 45,
                          )
                        : Icon(
                            Icons.circle,
                            size: 45,
                            color: Colors.grey,
                          ),
                  ),
                  FlatButton(
                    minWidth: 250,
                    height: 50,
                    child: Text(
                      'Dados do pessoais',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () async {
                      bool flag = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrimeiraPagina(),
                          ));
                      if (flag) {
                        setState(() {
                          isDadosPessoal = flag;
                        });
                      } else {
                        setState(() {
                          isDadosPessoal = false;
                        });
                      }
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey[600], width: 2, style: BorderStyle.solid), borderRadius: BorderRadius.circular(0)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: isBanco
                        ? Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 45,
                          )
                        : Icon(
                            Icons.circle,
                            size: 45,
                            color: Colors.grey,
                          ),
                  ),
                  FlatButton(
                    minWidth: 250,
                    height: 50,
                    child: Text(
                      'Procurar seu Banco',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: isDadosPessoal
                        ? () async {
                            bool flag = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SegundaPagina(),
                                ));
                            if (flag) {
                              setState(() {
                                isBanco = flag;
                              });
                            } else {
                              setState(() {
                                isBanco = false;
                              });
                            }
                          }
                        : null,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey[600], width: 2, style: BorderStyle.solid), borderRadius: BorderRadius.circular(0)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: isMetas
                        ? Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 45,
                          )
                        : Icon(
                            Icons.circle,
                            size: 45,
                            color: Colors.grey,
                          ),
                  ),
                  FlatButton(
                    minWidth: 250,
                    height: 50,
                    child: Text(
                      'Metas Financeiras',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: isBanco
                        ? () async {
                            bool flag = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TerceiraPagina(),
                                ));
                            if (flag) {
                              setState(() {
                                isMetas = flag;
                              });
                            } else {
                              setState(() {
                                isMetas = false;
                              });
                            }
                          }
                        : null,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey[600], width: 2, style: BorderStyle.solid), borderRadius: BorderRadius.circular(0)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), // This

      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: FlatButton(
              minWidth: 200,
              color: Colors.green,
              height: 42,
              onPressed: isMetas && isBanco && isDadosPessoal ? () {}: null,
              child: Text(
                'Salvar',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.transparent, width: 2, style: BorderStyle.solid), borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ), // trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
