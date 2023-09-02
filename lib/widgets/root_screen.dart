import 'package:ecommerce_flutter/cart/cart_screen.dart';
import 'package:ecommerce_flutter/screens/home_screen.dart';
import 'package:ecommerce_flutter/screens/profile_screen.dart';
import 'package:ecommerce_flutter/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late List<Widget> screens;
  int currentScreen = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    screens = const [
      HomeScreen(),
      SearchScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
    controller = PageController(initialPage: currentScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: currentScreen,
          //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 10,
          height: kBottomNavigationBarHeight,
          onDestinationSelected: (index) {
            setState(() {
              currentScreen = index;
            });
            controller.jumpToPage(currentScreen);
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(IconlyBold.home),
              icon: Icon(IconlyLight.home),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(IconlyBold.search),
              icon: Icon(IconlyLight.search),
              label: 'Search',
            ),
            NavigationDestination(
              selectedIcon: Icon(IconlyBold.bag_2),
              icon: Badge(
                backgroundColor: Colors.red,
                textColor: Colors.white,
                label: Text('5'),
                child: Icon(IconlyLight.bag_2),
              ),
              label: 'Cart',
            ),
            NavigationDestination(
              selectedIcon: Icon(IconlyBold.profile),
              icon: Icon(IconlyLight.profile),
              label: 'Profile',
            ),
          ]),
    );
  }
}
