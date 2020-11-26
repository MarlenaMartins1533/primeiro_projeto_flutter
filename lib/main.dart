import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    home: HomeScreen(),
  ));
}

@override
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Flutter Demostração'),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.deepOrange,
                  Colors.orangeAccent
                ])
              ),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Image.asset('images/flutter-bird.png',width: 100,height: 100,),
                      )
                    ],
                  ),
                )),
            CustomListTile(Icons.add_comment, 'Phrases of the day', ()=>{}),
            CustomListTile(Icons.water_damage_sharp, 'Home', ()=>{}),
            CustomListTile(Icons.attach_money, 'Bank', ()=>{}),
            CustomListTile(Icons.auto_awesome_motion, 'About', ()=>{}),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400)
          )
        ),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text, style: TextStyle(
                        fontSize: 16.0
                      ),),
                    ),
                    ],
                ),
                Icon(Icons.arrow_right)
                // Icon(Icons.attach_money),
                // Text('Bank')
              ],
            ),
          ),
        ),
      ),
    );
  }
}




//
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.lightGreen,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Frases do dia'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _numeroAleatorio = 0;
//   List _phrases = [
//     'Seu dia vai ser maravilhoso!',
//     'Seu dia hoje é de sorte pura!',
//     'O importante não é vencer todos os dias, mas lutar e aprender sempre.',
//     'A maior recompensa pelo trabalho não é o que a pessoa ganha, é o que ela se torna através dele',
//     'Não encontre defeitos, encontre soluções',
//     'Perder para a razão, sempre é ganhar.'
//   ];
//
//   void _incrementCounter() {
//     setState(() {
//       _numeroAleatorio = new Random().nextInt(6);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar( title: Text(widget.title),),
//
//       body: Center(
//
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('Frase do dia (clique no botão):',),
//
//             Text(
//               'Frase $_numeroAleatorio:',
//               style: Theme.of(context).textTheme.headline6,
//             ),
//                   Text(
//                   _phrases[_numeroAleatorio] ,
//               style: Theme.of(context).textTheme.headline6,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add_comment),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
