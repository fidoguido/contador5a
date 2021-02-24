import 'package:flutter/material.dart';

//Define el Widget
class ContadorPage extends StatefulWidget {
  @override
  _ContadorPage createState() => _ContadorPage();
}

//Clase controla el estado
class _ContadorPage extends State<ContadorPage> {
  final estiloTexto = new TextStyle(fontSize: 30.0);
  int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador App'),
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
          onPressed: _agregar,
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _disminuir),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _enCerar),
        SizedBox(
          width: 30.0,
        )
      ],
    );
  }

  void _agregar() {
    setState(() {
      conteo++;
    });
  }

  void _disminuir() {
    setState(() {
      conteo--;
    });
  }

  void _enCerar() {
    setState(() {
      conteo = 0;
    });
  }
}
