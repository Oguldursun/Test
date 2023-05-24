import 'package:e_book/consttants.dart';
import 'package:e_book/screens/details_screen.dart';
import 'package:e_book/widgets/book_rating.dart';
import 'package:e_book/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';
import '../widgets/reading_card_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/premium_vector.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: size.height * .1),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: [
                              TextSpan(
                                text: "What are you reading ",
                                style: TextStyle(fontSize: 40),
                              ),
                              TextSpan(
                                  text: "today?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ReadingListCard(
                              title: 'SUC ve CEZA',
                              rating: 4.9,
                              image: 'assets/images/suc_ve_ceza (3).jpg',
                              auth: "Fyodor Dostoyevski",
                            ),
                            ReadingListCard(
                              title: 'Kite Runner',
                              rating: 4.8,
                              image: 'assets/images/kite_runnerr.jpg',
                              auth: "Khaled Hosseini",
                            ),
                            ReadingListCard(
                              title: 'Dünyada FIL yalniz hayvan',
                              rating: 4.8,
                              image: 'assets/images/elephant (2).jpg',
                              auth: "Ahmet Şerif Izgören",
                            ),
                            SizedBox(width: 30),
                          ],
                        ),
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
                                    text: "Best of the ",
                                    style: TextStyle(fontSize: 35),
                                  ),
                                  TextSpan(
                                    text: "day",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35),
                                  ),
                                ],
                              ),
                            ),
                            bestOfTheDayCard(size, context),
                            RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.displaySmall,
                                children: [
                                  TextSpan(
                                    text: "Continue ",
                                    style: TextStyle(fontSize: 35),
                                  ),
                                  TextSpan(
                                    text: "reading...",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 80,
                              width: double.infinity,
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
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(38.5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 30, right: 20),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "SUC ve CEZA",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Fyodor Dostoyevski",
                                                    style: TextStyle(
                                                      color: kLightBlackColor,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 20),
                                                      child: Text(
                                                        "Chapter 7 of 10",
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color:
                                                              kLightBlackColor,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                ],
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/images/suc_ve_ceza (3).jpg",
                                              width: 35,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 7,
                                      width: size.width * .6,
                                      decoration: BoxDecoration(
                                        color: kProgressIndicator,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding:
                  EdgeInsets.only(top: 24, left: 24, right: size.width * .37),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New York Time Best For 11th March 2020",
                    style: TextStyle(
                      fontSize: 9,
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "How To Win \nFriends & Influence",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "Gary Venchuk",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      BookRating(score: 4.9),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win game of the best and people...",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/suc_ve_ceza (3).jpg",
              width: size.width * .28,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {
                  () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsScreen()));
                  };
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
