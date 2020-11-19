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
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, i) => SongTile(songs[i]),
              itemCount: songs.length,
            ),
          ),
        ],
      ),
    );
  }
}
