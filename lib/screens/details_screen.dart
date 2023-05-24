import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_book/consttants.dart';
import 'package:e_book/widgets/book_rating.dart';
import 'package:e_book/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/premium_vector.jpg"),
                      fit: BoxFit.fitHeight,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * .1),
                        BookInfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChapterCard(
                        name: "Money",
                        chapterNumber: 1,
                        tag: "Life is about change",
                      ),
                      ChapterCard(
                        name: "Power",
                        chapterNumber: 2,
                        tag: "Everything loves power",
                      ),
                      ChapterCard(
                        name: "Influence",
                        chapterNumber: 3,
                        tag: "Influence easily like never before",
                      ),
                      ChapterCard(
                        name: "Win",
                        chapterNumber: 4,
                        tag: "Winning is what matters",
                      ),
                      ChapterCard(
                        name: "Win",
                        chapterNumber: 5,
                        tag: "Winning is what matters",
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.displaySmall,
                      children: [
                        TextSpan(
                          text: "You might also ",
                          style: TextStyle(fontSize: 35),
                        ),
                        TextSpan(
                          text: "like...",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 24, top: 24, right: 24),
                          height: 175,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: kBlackColor),
                                  children: [
                                    TextSpan(
                                      text:
                                          "How To Win \nFriends & Influence\n",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    TextSpan(
                                      text: "Gary Venchuk",
                                      style: TextStyle(
                                        color: kLightBlackColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  BookRating(
                                    score: 4.9,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: RoundedButton(
                                      text: "Read",
                                      verticalPadding: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/images/suc_ve_ceza (3).jpg",
                          width: 68,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;

  const ChapterCard({
    Key? key,
    required this.name,
    required this.tag,
    required this.chapterNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Part $chapterNumber : $name\n",
                  style: TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: TextStyle(color: kLightBlackColor),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Crushing &",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                "Influence",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "When the earth was flat and everyone wanted to win game of the best and people...",
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        RoundedButton(
                          text: "Read",
                          verticalPadding: 10,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),
                      BookRating(score: 4.9),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset("assets/images/suc_ve_ceza (3).jpg", height: 200),
      ],
    );
  }
}
