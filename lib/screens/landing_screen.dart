import 'package:animalplanet_ui/screens/choose_plan_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/customappbar.dart';
import '../utils/strings.dart';
import '../utils/text_style.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/newelephant.jpg",
            height: height,
            fit: BoxFit.fitHeight,
          ),
          Column(
            children: <Widget>[
              CustomAppBar(),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: Strings.READY_TO_WATCH,
                        style: TextStyles.bigHeadingTextStyle,
                      ),
                      TextSpan(text: "\n"),
                      TextSpan(
                        text: Strings.READY_TO_WATCH_DESC,
                        style: TextStyles.bodyTextStyle,
                      ),
                      TextSpan(text: "\n"),
                      TextSpan(text: "\n"),
                      TextSpan(
                          text: Strings.START_ENJOYING,
                          style: TextStyles.buttonTextStyle)
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -40,
            right: -40,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ChoosePlanScreen(),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFD3A070).withOpacity(0.8),
                ),
                child: Align(
                  alignment: Alignment(-0.4, -0.4),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
