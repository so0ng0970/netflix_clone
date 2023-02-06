import 'package:flutter/material.dart';
import 'package:nexflix/model/model_movie.dart';
import 'package:nexflix/screen/detail_screen.dart';

class CircleSlider extends StatelessWidget {
  final List<Movie> movies;
  const CircleSlider({required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('미리보기'),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeCircleImage(context, movies),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeCircleImage(BuildContext context, List<Movie> movies) {
  List<Widget> result = [];
  for (var i = 0; i < movies.length; i++) {
    result.add(
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return DetailScreen(
                  movie: movies[i],
                );
              },
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: NetworkImage(movies[i].poster),
              radius: 48,
            ),
          ),
        ),
      ),
    );
  }
  return result;
}
