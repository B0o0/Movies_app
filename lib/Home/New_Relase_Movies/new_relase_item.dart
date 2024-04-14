import 'package:flutter/material.dart';
import 'package:movies_app/Model/Movies%20and%20Results.dart';
import 'package:movies_app/Home/ItemPhotoWidget.dart';

class NewRelaseItem extends StatelessWidget {
  Movies? topMovies;
  int index;

  NewRelaseItem(this.topMovies, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 130,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ItemPhotoWidget(topMovies, index),
    );
  }
}
