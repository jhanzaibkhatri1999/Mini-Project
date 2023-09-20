import 'package:flutter/material.dart';
import 'package:flutter_project/screens/cart_screen/cart_screen.dart';
import 'package:flutter_project/screens/favourites_screen/favourites_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_project/constant/app_colors.dart';
import 'package:flutter_project/constant/app_images.dart';
import 'package:flutter_project/screens/LaptopsHome_screen/Laptops_home_screen.dart';
import 'package:flutter_project/screens/category_screen/category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> widgetOptions = <Widget>[
    const GrocerryHomeScreen(),
    const Category_screen(),
    const Favourites_Screen(),
    const Cart_Screen(),
    
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.homeIcon,
                height: 20,
                width: 20,
              ),
              label: 'Home',
              backgroundColor: Appcolors.black_10),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.categoryIcon,
                height: 20,
                width: 20,
              ),
              label: 'Category',
              backgroundColor: Appcolors.black_10),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.favIcon,
                height: 20,
                width: 20,
              ),
              label: 'Favourite',
              backgroundColor: Appcolors.black_10),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.moreIcon,
                height: 20,
                width: 20,
              ),
              label: 'Cart',
              backgroundColor: Appcolors.black_10),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Appcolors.black_90,
        onTap: onItemTapped,
      ),
    );
  }
}
