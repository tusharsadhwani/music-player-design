import 'package:flutter/material.dart';

class SongTile extends StatelessWidget {
  final String songName;

  SongTile(this.songName);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        width: double.infinity,
        child: Center(
          child: ListTile(
            leading: CircleAvatar(
              child: Text(songName.substring(0, 1)),
            ),
            title: Text(
              songName,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('3:42'),
            trailing: Icon(
              Icons.play_arrow, 
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}