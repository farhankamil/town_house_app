import 'package:flutter/material.dart';
import 'package:town_house_app/shared/theme.dart';
import 'package:town_house_app/ui/widgets/home_best_agents.dart';
import 'package:town_house_app/ui/widgets/home_service_item.dart';

import '../widgets/product_card.dart';
import '../widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_home.png',
                width: 20,
                color: blueColor,
              ),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_favorite.png',
                width: 20,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_television.png',
                width: 20,
              ),
              label: 'TV News',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_settings.png',
                width: 20,
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildfProfile(context),
          categoriesTitle(),
          buildServices(context),
          staffPicksProducts(),
          buildBestAgents(),
          citiesListTile()
        ],
      ),
    );
  }
}

Widget buildfProfile(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Estate',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Best discovery ever',
              style: greyTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                'assets/img_friend3.png',
              ),
            ),
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: whiteColor,
              ),
              child: const Center(
                child: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget categoriesTitle() {
  return Container(
    margin: const EdgeInsets.only(
      top: 24,
    ),
    child: Text(
      'Categories',
      style: blackTextStyle.copyWith(
        fontSize: 18,
        fontWeight: semiBold,
      ),
    ),
  );
}

Widget buildServices(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 10,
    ),
    child: const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          HomeServiceItem(
            iconUrl: 'assets/ic_forest.png',
            title: 'Forest',
          ),
          HomeServiceItem(
            iconUrl: 'assets/ic_shop.png',
            title: 'Shop',
          ),
          HomeServiceItem(
            iconUrl: 'assets/ic_warehouse.png',
            title: 'warehouse',
          ),
          HomeServiceItem(
            iconUrl: 'assets/ic_rain.png',
            title: 'Rain',
          ),
          HomeServiceItem(
            iconUrl: 'assets/ic_office.png',
            title: 'Office',
          ),
          HomeServiceItem(
            iconUrl: 'assets/ic_jungle.png',
            title: 'jungle',
          ),
        ],
      ),
    ),
  );
}

Widget staffPicksProducts() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Staf Picks',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCard(
                imageUrl: 'assets/img_jakarta.jpg',
                locationName: 'Jakarta',
                idr: '\$120,77',
              ),
              ProductCard(
                imageUrl: 'assets/img_bali.jpg',
                locationName: 'Bali',
                idr: '\$99,14',
              ),
              ProductCard(
                imageUrl: 'assets/img_bandung.jpg',
                locationName: 'Bandung',
                idr: '\$89,76',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildBestAgents() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Best Agens',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HomeAgentsItem(
                imageUrl: 'assets/img_friend1.png',
                username: 'Satthu',
                labelSold: '1902 sold',
              ),
              HomeAgentsItem(
                imageUrl: 'assets/img_friend2.png',
                username: 'Isy Mana',
                labelSold: '839 sold',
              ),
              HomeAgentsItem(
                imageUrl: 'assets/img_friend3.png',
                username: 'Luph',
                labelSold: '422 sold',
              ),
              HomeAgentsItem(
                imageUrl: 'assets/img_friend4.png',
                username: 'Alex',
                labelSold: '123 sold',
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget citiesListTile() {
  return Container(
    margin: const EdgeInsets.only(
      top: 16,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cities',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const ProductTile(
          imageUrl: 'assets/img_jakarta.jpg',
          username: 'Jakarta',
          unitAvailable: '194, property',
        ),
        const ProductTile(
          imageUrl: 'assets/img_bandung.jpg',
          username: 'Bandung',
          unitAvailable: '89,400 property',
        ),
        const ProductTile(
          imageUrl: 'assets/img_bali.jpg',
          username: 'Bali',
          unitAvailable: '184,000 property',
        ),
      ],
    ),
  );
}
