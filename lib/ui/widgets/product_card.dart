import 'package:flutter/material.dart';
import 'package:town_house_app/shared/theme.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String locationName;
  final String idr;
  const ProductCard(
      {Key? key,
      required this.imageUrl,
      required this.locationName,
      required this.idr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 184,
      margin: const EdgeInsets.only(
        right: 15,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              width: 180,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                locationName,
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
              Text(
                idr,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
