// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'index.dart'; // Imports other custom widgets

import '../../favorites_page_n/favorites_page_n_widget.dart';
import '../../home_page_n/home_page_n_widget.dart';
import '../../my_cart_page_n/my_cart_page_n_widget.dart';
import '../../profile_section_page_n/profile_section_page_n_widget.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    Key? key,
    this.width,
    this.height,
    required this.selectedColor,
    required this.unselectedColor,
    required this.currentIndex,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color selectedColor;
  final Color unselectedColor;
  final int currentIndex;

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int currentIndex = 0;
  double size = 0.0;
  // replace list item with your class name
  List<Widget> currentPage = [
    HomePageNWidget(),
    MyCartPageNWidget(),
    FavoritesPageNWidget(),
    ProfileSectionPageNWidget(),
  ];

  @override
  void initState() {
    super.initState();
    if (mounted) {
      setState(() {
        currentIndex = widget.currentIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: currentPage[currentIndex],
      bottomNavigationBar: Card(
        elevation: 50,
        child: Container(
          height: size > 800 ? size * 0.078 : size * 0.1,
          child: Row(
            children: [
              bottomItem(FontAwesomeIcons.house, 0, "Home"),
              bottomItem(FontAwesomeIcons.bagShopping, 1, "Cart"),
              bottomItem(FontAwesomeIcons.solidHeart, 2, "Favorites"),
              bottomItem(FontAwesomeIcons.solidCircleUser, 3, "Profile"),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomItem(IconData icon, int index, String label) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: InkWell(
          splashColor: widget.selectedColor.withOpacity(0.15),
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                icon,
                color: index == currentIndex
                    ? widget.selectedColor
                    : widget.unselectedColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: index == currentIndex
                        ? widget.selectedColor
                        : widget.unselectedColor,
                  ),
                ),
              ),
              Text(
                label,
                style: TextStyle(
                  color: index == currentIndex
                      ? widget.selectedColor
                      : widget.unselectedColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
