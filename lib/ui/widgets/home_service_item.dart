import 'package:flutter/material.dart';
import 'package:town_house_app/shared/theme.dart';

class HomeServiceItem extends StatelessWidget {
  final String iconUrl;
  final String title;

  const HomeServiceItem({
    required this.iconUrl,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.only(
            bottom: 8,
            right: 16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: whiteColor,
          ),
          child: Center(
            child: Image.asset(
              iconUrl,
              width: 24,
              height: 24,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 8,
            right: 20,
          ),
          child: Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        ),
      ],
    );
  }
}
