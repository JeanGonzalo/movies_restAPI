import 'package:flutter/material.dart';
import 'package:movies/src/providers/movies_provider.dart';
import 'package:movies/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('M ovies in theaters'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[_swiperTarjetas()],
        ),
      ),
    );
  }

//importamos desde la libreria de flutter el *Swiper/
  Widget _swiperTarjetas() {
    final moviesProvider = new MoviesProvider();
    moviesProvider.getEnCines();
    return CardSwiper(
      peliculas: [1, 2, 3, 4, 5],
    );
  }
}
