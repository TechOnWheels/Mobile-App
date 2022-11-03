import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarsQuality extends StatefulWidget {
  const StarsQuality({Key? key}) : super(key: key);

  @override
  State<StarsQuality> createState() => _StarsQualityState();
}

class _StarsQualityState extends State<StarsQuality> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFCE31),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFCE31),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFCE31),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFCE31),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFCE31),
        ),
      ],
    );
  }
}
