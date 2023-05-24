import 'package:flutter/material.dart';
import '../consttants.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({
    Key? key, this.score=2.4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 7),
            blurRadius: 20,
            color: Color(0xFF3D3D3D).withOpacity(.5),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(Icons.star, color: kIconColor, size: 15),
          SizedBox(height: 5),
          Text(
            "$score",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
