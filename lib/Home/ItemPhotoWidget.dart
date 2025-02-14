import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movies_app/Model/Movies%20and%20Results.dart';
import 'package:movies_app/Services/Provider.dart';
import 'package:movies_app/Home/details/Details_Screen.dart';

class ItemPhotoWidget extends StatelessWidget {
  Movies? movies;
  int index;

  ItemPhotoWidget(this.movies, this.index);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) =>
                    DetailsScreen(movies!.results!.elementAt(index)),
              ),
            );
            // Navigator.pushNamed(
            //   context,
            //   DetailsScreen.routeName,
            //   arguments: topMovies,
            // );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              'https://image.tmdb.org/t/p/w500' +
                  '${movies!.results!.elementAt(index).posterPath}',
              fit: BoxFit.cover,
              width: 110,
              height: 130,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            provider.selectMovie(movies!.results!.elementAt(index));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child:
                provider.idList.contains(movies!.results!.elementAt(index).id)
                    ? Image.asset('assets/images/ic_check.png')
                    : Image.asset('assets/images/ic_bookmark.png'),
          ),
        ),
      ],
    );
  }
}
