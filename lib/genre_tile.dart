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
      children: <Widget>[
        Container(
          height: tileWidth,
          width: tileHeight,
          child: Card(
            elevation: 5,
            color: backgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: tileHeight * 0.3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    // SizedBox(
                    //   width: tileWidth * 0.3,
                    // ),
                    Container(
                      padding: EdgeInsets.all(5),
                      width: tileWidth * 0.8,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                          child: Text(
                          genreTitle,
                          style: Theme.of(context).textTheme.title.copyWith(
                            color: textColor
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          width: tileHeight,
          height: tileWidth * 0.7,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: tileWidth * 0.2,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(textColor.red, textColor.green, textColor.blue, 0.15),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(tileHeight * 0.8),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}