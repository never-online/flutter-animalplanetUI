import 'package:animalplanet_ui/utils/strings.dart';
import 'package:animalplanet_ui/utils/text_style.dart';
import 'package:animalplanet_ui/widgets/customappbar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.40,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/elephant.jpg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                children: <Widget>[
                  CustomAppBar(),
                  Expanded(
                    child: Align(
                      alignment: Alignment(0, -0.6),
                      child: Text(
                        Strings.welcomeToAPlanet,
                        style: TextStyles.bigHeadingTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.65,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
                color: Color(0xFFB98959),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    child: Text(
                      Strings.relatedToYou,
                      style: TextStyles.buttonTextStyle,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 16),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: ClipRRect(
                                    child: Image.asset(
                                      "assets/tiger.jpg",
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: Text(
                                    Strings.lifeWithATiger,
                                    style: TextStyles.titleTextStyle,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: Text(
                                    Strings.loremIpsum,
                                    style: TextStyles.body3TextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            margin: const EdgeInsets.only(left: 16),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: ClipRRect(
                                    child: Image.asset(
                                      "assets/wild_animals.jpg",
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: Text(
                                    Strings.wildAnimals,
                                    style: TextStyles.titleTextStyle,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: Text(
                                    Strings.loremIpsum,
                                    style: TextStyles.body3TextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    child: Text(
                      Strings.quickCategories,
                      style: TextStyles.titleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFDAD4CC).withOpacity(0.4),
                              ),
                              child: Image.asset('assets/bear.png',
                                  height: 50, width: 50),
                            ),
                            Text(
                              Strings.bear,
                              style: TextStyles.body2TextStyle,
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFDAD4CC).withOpacity(0.4),
                              ),
                              child: Image.asset('assets/lion.png',
                                  height: 50, width: 50),
                            ),
                            Text(
                              Strings.lion,
                              style: TextStyles.body2TextStyle,
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFDAD4CC).withOpacity(0.4),
                              ),
                              child: Image.asset('assets/reptiles.png',
                                  height: 50, width: 50),
                            ),
                            Text(
                              Strings.reptiles,
                              style: TextStyles.body2TextStyle,
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFDAD4CC).withOpacity(0.4),
                              ),
                              child: Image.asset('assets/pets.png',
                                  height: 50, width: 50),
                            ),
                            Text(
                              Strings.pets,
                              style: TextStyles.body2TextStyle,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
