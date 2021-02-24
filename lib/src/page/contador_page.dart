import 'package:flutter/material.dart';

//Define el Widget
class ContadorPage extends StatefulWidget {
  @override
  _ContadorPage createState() => _ContadorPage();
}

//Clase controla el estado
class _ContadorPage extends State<ContadorPage> {
  final estiloTexto = new TextStyle(fontSize: 30.0);
  int conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de Tabs',
              style: estiloTexto,
            ),
            Text(
              //conteo.toString(),
              '$conteo',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              conteo++;
            });
          },
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                conteo--;
              });
            }),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: () {
              setState(() {
                conteo = 0;
              });
            }),
        SizedBox(
          width: 30.0,
        )
      ],
    );
  }
}
