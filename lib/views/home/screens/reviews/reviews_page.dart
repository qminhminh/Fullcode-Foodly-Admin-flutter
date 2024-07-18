import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_admin/common/heading_titles_widget.dart';
import 'package:foodly_admin/constants/constants.dart';
import 'package:foodly_admin/views/home/screens/reviews/feedback_list.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        color: kOffWhite,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
           const HeadingTitlesWidget(title: "Feedback",),
            SizedBox(
              height: 10.h,
            ),
           
            SizedBox(
              height: hieght* 0.6,
              width: width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: const FeedbackList(),
              ),
            ),
        
          ],
        ),
      );
  
  }
}
