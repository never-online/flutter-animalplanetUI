import 'package:animalplanet_ui/utils/text_style.dart';
import 'package:flutter/material.dart';

class SubscriptionContainer extends StatelessWidget {
  final String amount, text, imagePath;

  const SubscriptionContainer({
    Key key,
    this.amount,
    this.text,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.6 / 4,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.2),
            BlendMode.srcATop,
          ),
          image: AssetImage(imagePath),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: TextStyles.subscriptionTextStyle,
          ),
          Spacer(),
          Text(
            "\$ $amount",
            style: TextStyles.subscriptionAmountTextStyle,
          ),
        ],
      ),
    );
  }
}
