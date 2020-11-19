import 'package:flutter/material.dart';

class GenreTile extends StatelessWidget {
  final String genreTitle;
  final Color backgroundColor;
  final Color textColor;

  GenreTile({this.genreTitle, this.backgroundColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    var tileWidth = MediaQuery.of(context).size.height * 0.22;
    var tileHeight = MediaQuery.of(context).size.height * 0.25;
    return Stack(
      alignment: Alignment.topRight,
      children: <Widget>[
        Container(
          height: tileWidth,
          width: tileHeight,
          child: Card(
            elevation: 5,
            color: backgroundColor,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.all(5),
                width: tileWidth * 0.8,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    genreTitle,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: textColor),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: tileWidth * 0.7,
          width: tileWidth * 0.8,
          child: Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: textColor.withOpacity(0.15),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(tileHeight * 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
