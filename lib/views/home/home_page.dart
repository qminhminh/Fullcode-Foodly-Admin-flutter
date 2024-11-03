import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_admin/common/custom_appbar.dart';
import 'package:foodly_admin/common/home_tile_holder.dart';
import 'package:foodly_admin/constants/constants.dart';
import 'package:foodly_admin/controllers/home_controller.dart';
import 'package:foodly_admin/views/home/screens/cashout/cashout_page.dart';
import 'package:foodly_admin/views/home/screens/categories/categories_page.dart';
import 'package:foodly_admin/views/home/screens/drivers/drivers_page.dart';
import 'package:foodly_admin/views/home/screens/foods/foods_page.dart';
import 'package:foodly_admin/views/home/screens/orders/orders_page.dart';
import 'package:foodly_admin/views/home/screens/restaurant/restaurant_page.dart';
import 'package:foodly_admin/views/home/screens/reviews/reviews_page.dart';
import 'package:foodly_admin/views/home/screens/statistics/stats_page.dart';
import 'package:foodly_admin/views/home/screens/transactions/transactions_page.dart';
import 'package:foodly_admin/views/home/screens/users/users_page.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> requestPermissionsWithPrompt() async {
    PermissionStatus notificationStatus =
        await Permission.notification.request();
    if (notificationStatus.isDenied) {
      print("Người dùng đã từ chối quyền thông báo.");
    } else if (notificationStatus.isPermanentlyDenied) {
      openAppSettings(); // Mở cài đặt ứng dụng nếu bị từ chối vĩnh viễn
    }
  }

  @override
  void initState() {
    super.initState();
    requestPermissionsWithPrompt();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(130.h), child: CustomAppBar()),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              color: kOffWhite,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                const HomeTilesHolder(),
                Obx(() {
                  Widget currentPage;

                  switch (controller.currentPage.value) {
                    case 'Restaurant':
                      currentPage = const RestaurantPage();
                      break;
                    case 'Drivers':
                      currentPage = const DriversPage();
                      break;
                    case 'Orders':
                      currentPage = const OrdersPage();
                      break;

                    case 'Categories':
                      currentPage = const CategoriesPage();
                      break;

                    case 'Foods':
                      currentPage = const FoodsPage();
                      break;

                    case 'Users':
                      currentPage = const UsersPage();
                      break;

                    case 'Cashout':
                      currentPage = const CashoutPage();
                      break;

                    case 'Statistics':
                      currentPage = const StatsPage();
                      break;

                    case 'Transactions':
                      currentPage = const TransactionsPage();
                      break;

                    case 'Feedback':
                      currentPage = const FeedbackPage();
                      break;

                    default:
                      currentPage = const RestaurantPage();
                  }

                  return currentPage;
                }),
              ],
            ),
          ),
        ));
  }
}
