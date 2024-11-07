import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String googleApiKey = 'AIzaSyBCOoQR2ovyrYRTPbqMAO5H0SHVeLfSjeY';

const kPrimary = Color.fromARGB(255, 240, 185, 96);
const kPrimaryLight = Color(0xFF40F3EA);
const kSecondary = Color.fromARGB(255, 163, 83, 7);
const kSecondaryLight = Color(0xFFffe5db);
const kTertiary = Color(0xff0078a6);
const kGray = Color(0xff83829A);
const kGrayLight = Color(0xffC1C0C8);
const kLightWhite = Color(0xffFAFAFC);
const kWhite = Color(0xfffFFFFF);
const kDark = Color(0xff000000);
const kRed = Color(0xffe81e4d);
const kOffWhite = Color(0xffF3F4F8);

double hieght = 825.h;
double width = 375.w;

LinearGradient buttonGradient() {
  return LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        kPrimary.withOpacity(0.9),
        kPrimary,
        kPrimary.withOpacity(0.4),
      ]);
}

const String appBaseUrl = "https://fullcode-backend-admin-foodly.onrender.com";

List<dynamic> tiles = [
  {
    "title": "Restaurants",
    "imagePath": "assets/icons/restaurant_building.svg",
  },
  {
    "title": "Drivers",
    "imagePath": "assets/icons/deliver_food.svg",
  },
  {
    "title": "Orders",
    "imagePath": "assets/icons/purchase_order.svg",
  },
  {
    "title": "Categories",
    "imagePath": "assets/icons/categorize.svg",
  },
  {
    "title": "Foods",
    "imagePath": "assets/icons/restaurant_menu.svg",
  },
  {
    "title": "Users",
    "imagePath": "assets/icons/female_profile.svg",
  },
  {
    "title": "Cashout",
    "imagePath": "assets/icons/cash_withdrawal.svg",
  },
  {
    "title": "Feedback",
    "imagePath": "assets/icons/feedback_hub.svg",
  },
  {
    "title": "More",
    "imagePath": "assets/icons/circled_menu.svg",
  }
];
