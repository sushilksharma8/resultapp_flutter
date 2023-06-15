import 'package:flutter/material.dart';

class DrawerData {
  String title;
  IconData icon;

  DrawerData({required this.title, required this.icon});
}

List<DrawerData> drawerList = [
  DrawerData(title: "Home", icon: Icons.home),
  DrawerData(title: "Contact", icon: Icons.phone),
  DrawerData(title: "Address", icon: Icons.location_city),
  DrawerData(title: "Favourites", icon: Icons.favorite),
  DrawerData(title: "Setting", icon: Icons.settings),
  DrawerData(title: "Info", icon: Icons.info),
];
