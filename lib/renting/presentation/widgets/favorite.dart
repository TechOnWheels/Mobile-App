import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({Key? key}) : super(key: key);

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  @override
  Widget build(BuildContext context) {
    return FavoriteButton(
      iconSize: 40,
      valueChanged: (_isFavorite) {
        print(
            'Is Favorite $_isFavorite)');
      },
    );
  }
}
