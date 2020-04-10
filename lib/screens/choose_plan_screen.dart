import 'package:animalplanet_ui/screens/dashboard_screen.dart';
import 'package:animalplanet_ui/widgets/subscription_container.dart';
import 'package:flutter/material.dart';

import '../utils/text_style.dart';
import '../utils/strings.dart';
import '../widgets/customappbar.dart';

class ChoosePlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              // SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 25, bottom: 10),
                child: Text(
                  Strings.chooseAPlan,
                  style: TextStyles.headingTextStyle,
                ),
              ),
              SubscriptionContainer(
                text: Strings.weekSubscription,
                amount: "1.99",
                imagePath: "assets/weekly.jpg",
              ),
              SubscriptionContainer(
                text: Strings.oneMonthSubscription,
                amount: "4.49",
                imagePath: "assets/monthly.jpg",
              ),
              SubscriptionContainer(
                text: Strings.threeMonthSubscription,
                amount: "9.99",
                imagePath: "assets/3monthly.jpg",
              ),
              SubscriptionContainer(
                text: Strings.sixMonthSubscription,
                amount: "13.99",
                imagePath: "assets/6monthly.jpg",
              ),
            ],
          ),
          Positioned(
            bottom: 25,
            right: 0,
            left: 20,
            child: Text(
              Strings.LAST_STEP_TO_ENJOY,
              style: TextStyles.buttonTextStyle,
            ),
          ),
          Positioned(
            bottom: -40,
            right: -40,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DashboardScreen(),
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
