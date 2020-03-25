import 'package:clone_youtube/telas/Biblioteca.dart';
import 'package:clone_youtube/telas/EmAlta.dart';
import 'package:clone_youtube/telas/Inicio.dart';
import 'package:clone_youtube/telas/Inscricao.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indexAtual = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
     Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca()
    ];
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("images/youtube.png", width: 98, height: 22),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.videocam
            ),
            onPressed: () {
              print("Acao: videocam");
            },
          ),
          IconButton(
            icon: Icon(
                Icons.search
            ),
            onPressed: () {
              print("Acao: search");
            },
          ),
          IconButton(
            icon: Icon(
                Icons.account_circle
            ),
            onPressed: () {
              print("Acao: account");
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: telas[_indexAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexAtual,
        onTap: (index) {
          setState(() {
            _indexAtual = index;
          });
        },
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: [
              BottomNavigationBarItem(
                // backgroundColor: Colors.orange,
                title: Text("Inicio"),
                icon: Icon(Icons.home)
              ),
              BottomNavigationBarItem(
                  // backgroundColor: Colors.red,
                  title: Text("Em Alta"),
                  icon: Icon(Icons.whatshot)
              ),
              BottomNavigationBarItem(
                  // backgroundColor: Colors.blue,
                  title: Text("Inscricoes"),
                  icon: Icon(Icons.subscriptions)
              ),
              BottomNavigationBarItem(
                  // backgroundColor: Colors.green,
                  title: Text("Biblioteca"),
                  icon: Icon(Icons.folder)

              ),

              ]
    ),
    );
  }
}
