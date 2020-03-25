import 'package:clone_youtube/models/Video.dart';
import 'package:flutter/material.dart';

import '../Api.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  _listarVideos() {
    Api api = Api();
    return api.pesquisar("");
  }

  @override
  Widget build(BuildContext context) {

    Api api = Api();
    api.pesquisar("tenere");

    return FutureBuilder<List<Video>>(
      future: _listarVideo(),
      builder: (context, snapshot) {
          switch( snapshot.connectionState ) {
            case ConnectionState.none :
            case ConnectionState.waiting :
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.active :
            case ConnectionState.done :

          }
      },
    );
  }
}
