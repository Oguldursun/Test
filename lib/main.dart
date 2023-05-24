import 'package:e_book/consttants.dart';
import 'package:e_book/screens/home_screen.dart';
import 'package:e_book/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kBlackColor),
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          // image: DecorationImage(
          //     image: NetworkImage(
          //         "https://st8.cannypic.com/thumbs/42/427617_632_canny_pic.jpg"),
          //     fit: BoxFit.cover),
          image: DecorationImage(
            image: AssetImage("assets/images/premium_vector.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.displayMedium,
                children: [
                  TextSpan(
                    text: "flamin",
                  ),
                  TextSpan(
                    text: "go",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: RoundedButton(
                  text: "start reading",
                  fontSize: 20,

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //        return HomeScreen();
                  //     },
                  //   ),
                  // );
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
