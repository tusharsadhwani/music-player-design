import 'package:flutter/material.dart';

import 'song_tile.dart';

class TrendingSongs extends StatelessWidget {
  final songs = [
    'Shape of You',
    'God is a Woman',
    'My Strange Addiction',
    'Old Town Road',
    'Havana',
    'Lose You to Love Me',
    'Despacito',
    'Bury a Friend',
    'Hello',
    'Bad Guy',
  ];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Trending Songs',
            style: Theme.of(context).textTheme.title,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.54,
            child: SingleChildScrollView(
              child: Column(
                children: songs.map((songName) => SongTile(songName)).toList()
              ),
            ),
          )
        ],
      ),
    );
  }
}