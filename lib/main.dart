import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Frases do dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  List _phrases = [
    'Seu dia vai ser maravilhoso!',
    'Seu dia hoje é de sorte pura!',
    'O importante não é vencer todos os dias, mas lutar e aprender sempre.',
    'A maior recompensa pelo trabalho não é o que a pessoa ganha, é o que ela se torna através dele',
    'Não encontre defeitos, encontre soluções',
    'Perder para a razão, sempre é ganhar.'
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( title: Text(widget.title),),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Frase do dia (clique no botão):',),

            Text(
              'Frase $_numeroAleatorio:',
              style: Theme.of(context).textTheme.headline6,
            ),
                  Text(
                  _phrases[_numeroAleatorio] ,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add_comment),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
