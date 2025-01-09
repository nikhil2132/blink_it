import 'package:blink_it/repository/screens/cart/cart_screen.dart';
import 'package:blink_it/repository/screens/categories/categories_screen.dart';
import 'package:blink_it/repository/screens/home/home_screen.dart';
import 'package:blink_it/repository/screens/print/print_screen.dart';
import 'package:blink_it/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class BottomnavScreen extends StatefulWidget {
  const BottomnavScreen({super.key});

  @override
  State<BottomnavScreen> createState() => _BottomnavScreenState();
}

class _BottomnavScreenState extends State<BottomnavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const CartScreen(),
    const CategoriesScreen(),
    const PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: UiHelper.customImage(
                img: "home 1.png",
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: UiHelper.customImage(
                img: "shopping-bag 1.png",
              ),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: UiHelper.customImage(
                img: "category 1.png",
              ),
              label: "Category"),
          BottomNavigationBarItem(
              icon: UiHelper.customImage(
                img: "printer 1.png",
              ),
              label: "Print"),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
