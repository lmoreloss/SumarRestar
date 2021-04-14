import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Incrementador(), //llamar al widget stateful
    );
  }
}

class Incrementador extends StatefulWidget { // asi se declara un stateful widget, que esta siendo utilizado por el stateless
  @override
  _IncrementadorState createState() => _IncrementadorState(); 
}

class _IncrementadorState extends State<Incrementador> { //clase para hacerle override a la clase incrementador
  final estiloTexto = new TextStyle(fontSize: 32);
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola mundo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Numero de clicks',
            style: estiloTexto,
          ),
          Text(
            '$contador', //se imprime el valor de contador, jalado desde el state
            style: estiloTexto,
          )
        ],
      )),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     print('Oprimiste el boton');
      //     setState(() {
      //       contador++;  //con el setState((){}) podemos influenciar el state del stateful widget
      //     });
      //     print('$contador veces');
      //   },
      
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(child: Icon(Icons.add),onPressed: (){setState(() {
            contador++;
            print('Sumaste');
          });},),
          FloatingActionButton(child: Icon(Icons.remove),onPressed: (){setState(() {
            contador--;
            print('Restar');
          });},),
          FloatingActionButton(child: Icon(Icons.restore),onPressed: (){setState(() {
            contador = 0;
            print('Reiniciaste a 0');
          });},),
        ],
      ),
    );
  }
}
