import 'package:flutter/material.dart';

import 'genre_tile.dart';

class PopularGenres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            GenreTile(
              genreTitle: 'Jazz',
              backgroundColor: Colors.deepPurple,
              textColor: Colors.white,
            ),
            GenreTile(
              genreTitle: 'R&B',
              backgroundColor: Colors.white,
              textColor: Colors.black,
            ),
            GenreTile(
              genreTitle: 'HipHop',
              backgroundColor: Colors.black,
              textColor: Colors.white,
            ),
            GenreTile(
              genreTitle: 'Trap',
              backgroundColor: Colors.deepOrange,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
