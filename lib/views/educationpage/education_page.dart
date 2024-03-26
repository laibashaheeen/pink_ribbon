import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pink_ribbon/data/app_colors.dart';
import 'package:pink_ribbon/data/typography.dart';
import 'package:pink_ribbon/model/EducationModel.dart';
import 'package:pink_ribbon/views/educationpage/components/EducationCard.dart';
import 'package:pink_ribbon/views/landingpage/landing_page.dart';


class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: AppColors.kWhite,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LandingPage(),
                  ));
          },
          child: Icon(
                Icons.arrow_back_ios_new,
                size: 28,
                color: AppColors.kAppBarGrey,
              ),
        ),
        centerTitle: true,
        title: Text("Education",
                style: AppTypography.kSemiBold18.copyWith(color: AppColors.kPrimary)
                ),
        actions: [
          InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const NotificationPage(),
              //     ));
            },
            child: Icon(
              Icons.notifications_none_rounded,
              size: 28,
              color: AppColors.kAppBarGrey,
            ),
          ),
          InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(right: 16.w, left: 8.w),
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 28,
                  color: AppColors.kAppBarGrey,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 22.w,),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.kBackgroundPink1.withOpacity(0.4),
                AppColors.kBackgroundPink2.withOpacity(0.5),
                AppColors.kWhite,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            
            children: [
              SizedBox(height: 50.h,),
              ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(height: 30.h),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: educationItem.length,
                        itemBuilder: (BuildContext context, int index) {
                          return EducationCard(
                            educationItem: educationItem[index],
                          );
                        },
                      ),
                      SizedBox(height: 100.h,),
            ],
          ),
        ),
      ),
      
      
      
    );
  }
}