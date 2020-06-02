import 'package:barber/constants.dart';
import 'package:flutter/material.dart';

class Category {
  final String icon;
  final String title;
  final String subtitle;
  final Color color;
  Category({this.icon, this.subtitle, this.title, this.color});
}

List<Category> categoryList = [
  Category(
    icon: "assets/saloon.svg",
    title: "Saloon",
    subtitle: "5",
    color: kPurple,
  ),
  Category(
    icon: "assets/haircut.svg",
    title: "Haircut",
    subtitle: "59",
    color: kYellow,
  ),
  Category(
    icon: "assets/palor.svg",
    title: "Palor",
    subtitle: "23",
    color: kGreen,
  ),
  Category(
    icon: "assets/shampoo.svg",
    title: "Shampoo",
    subtitle: "55",
    color: kPink,
  ),
  Category(
    icon: "assets/spa.svg",
    title: "Spa",
    subtitle: "15",
    color: kIndigo,
  ),
];
