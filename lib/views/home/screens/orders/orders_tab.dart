import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_admin/common/app_style.dart';
import 'package:foodly_admin/constants/constants.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      width: width,
      decoration: BoxDecoration(
          color: kLightWhite, borderRadius: BorderRadius.circular(25.r)),
      child: TabBar(
          controller: _tabController,
          dividerColor: Colors.transparent,
          indicator: BoxDecoration(
              gradient: buttonGradient(),
              borderRadius: BorderRadius.circular(25.r)),
          labelPadding: EdgeInsets.zero,
          labelColor: kLightWhite,
          labelStyle: appStyle(12, kLightWhite, FontWeight.normal),
          unselectedLabelColor: kGrayLight,
          tabs: [
            Tab(
              child: SizedBox(
                width: width / 2,
                height: 25,
                child: const Center(
                  child: Text("Placed"),
                ),
              ),
            ),
            Tab(
              child: SizedBox(
                width: width / 2,
                height: 25,
                child: const Center(
                  child: Text("Delivering"),
                ),
              ),
            ),
            Tab(
              child: SizedBox(
                width: width / 2,
                height: 25,
                child: const Center(
                  child: Text("Delivered"),
                ),
              ),
            ),
            Tab(
              child: SizedBox(
                width: width / 2,
                height: 25,
                child: const Center(
                  child: Text("Cancelled"),
                ),
              ),
            ),
          ]),
    );
  }
}
