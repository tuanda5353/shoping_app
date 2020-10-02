import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app/constants.dart';
import 'package:shoping_app/screens/singin/sign_in_screen.dart';
import 'package:shoping_app/size_config.dart';
import 'package:shoping_app/widget/defaut_button.dart';
import 'package:shoping_app/widget/dot.dart';
import 'package:shoping_app/widget/splash_content.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> splashData = [
      {
        "text": "Welcome to Tokoto, Let’s shop!",
        "image": "assets/images/splash_1.png"
      },
      {
        "text":
            "We help people conect with store \naround United State of America",
        "image": "assets/images/splash_2.png"
      },
      {
        "text": "We show the easy way to shop. \nJust stay at home with us",
        "image": "assets/images/splash_3.png"
      },
    ];

    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) => setState(() {
                  currentPage = value;
                }),
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]['text'],
                  image: splashData[index]['image'],
                ),
                itemCount: splashData.length,
              ),
              flex: 3,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          splashData.length,
                          (index) => DotWidget(currentPage == index),
                        ).toList()
                      ],
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    DefaultButton(
                      onPress: () => Navigator.pushNamed(context, SignInScreen.routeName),
                    ),
                    Spacer()
                  ],
                ),
              ),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBox(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(56),
      width: double.infinity,
      child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: kPrimaryColor,
          onPressed: () {
            Navigator.pushNamed(context, SignInScreen.routeName);
          },
          child: Text(
            'Continue',
            style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenHeight(18)),
          )),
    );
  }
}
