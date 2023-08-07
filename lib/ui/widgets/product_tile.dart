import 'package:flutter/material.dart';
import 'package:town_house_app/shared/theme.dart';

class ProductTile extends StatelessWidget {
  final String imageUrl;
  final String username;
  final String unitAvailable;
  const ProductTile(
      {Key? key,
      required this.imageUrl,
      required this.username,
      required this.unitAvailable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(
     
        bottom: 15,
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              width: 90,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  unitAvailable,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class ProductTile extends StatelessWidget {
//   final String imageUrl;
//   final String username;
//   final String unitAvailable;

//   const ProductTile({
//     required this.imageUrl,
//     required this.username,
//     required this.unitAvailable,
//     super.key, 
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 90,
//       height: 120,
//       margin: const EdgeInsets.only(
//         right: 17,
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(
//           20,
//         ),
//         color: Colors.white,
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 45,
//             height: 45,
//             margin: const EdgeInsets.only(
//               bottom: 13,
//             ),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               image: DecorationImage(
//                 fit: BoxFit.cover,
//                 image: AssetImage(
//                   imageUrl,
//                 ),
//               ),
//             ),
//           ),
//           Text(
//             '@$username',
//             // style: blackTextStyle.copyWith(
//             //   fontSize: 12,
//             //   fontWeight: medium,
//             // ),
//           ),
//         ],
//       ),
//     );
//   }
// }
