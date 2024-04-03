import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pink_ribbon/data/app_colors.dart';
import 'package:pink_ribbon/data/typography.dart';
import 'package:pink_ribbon/views/educationpage/components/custom_appbar.dart';

class Factors extends StatefulWidget {
  const Factors({Key? key}) : super(key: key);

  @override
  State<Factors> createState() => _FactorsState();
}

class _FactorsState extends State<Factors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
                  decoration: BoxDecoration(
                    color: AppColors.kPrimary,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Text(
                    "Factors",
                    style:
                        AppTypography.kBold16.copyWith(color: AppColors.kWhite),
                  ),
                ),
                InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.share,
                      color: AppColors.kAppBarGrey,
                    ))
              ],
            ),
            SizedBox(height: 25.h),
            Text(
              "There are two types of risk factors for Breast Cancer:",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Genetic Risk Factors",
              style: AppTypography.kBold18,
            ),
            SizedBox(height: 5.h),
            Text(
              "Gender",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "Breast cancer occurs nearly 100 times, more often in women than in men.",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Age",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "Two out of three women with invasive cancer are diagnosed after the age of 55.",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Family History",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "If your mother, sister, father or family member has been diagnosed with breast or ovarian cancer, you have a higher risk of being diagnosed with breast cancer. Your risk increases if your relative was diagnosed before the age of 50.",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Personal Health History",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "If you have been diagnosed with breast cancer in one breast, you have an increased risk of being diagnosed with breast cancer in the other breast. Also, your risk increases if abnormal breast cells have been detected before (such as atypical hyperplasia, lobular carcinoma in situ (LCIS) or ductal carcinoma in situ (DCIS).",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Mensural & Reproductive History",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "Early menstruation (before age 12), late menopause (after 55), having your first child at an older age, or never given birth, can also increase your risk for breast cancer.",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Dense Breast Tissue",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "Having dense breast tissue can increase your risk for breast cancer and make lumps harder to detect. Be sure to ask your physician if you have dense breasts and what the implications of having dense breasts are.",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 20.h),
            Divider(
              thickness: 1,
              color: AppColors.kGrey,
            ),
            SizedBox(height: 20.h),
            Text(
              "Environmental & Lifestyle Risk Factors",
              style: AppTypography.kBold18,
            ),
            SizedBox(height: 5.h),
            Text(
              "Lack of Physical Activity",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "A sedentary lifestyle with little physical activity can increase your risk of breast cancer.",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Poor Diet",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "A diet high in saturated fat and lacking fruits and vegetables can increase your risk for breast cancer.",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Being Overweight or Obese",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "Being overweight or obese can increase the risk of breast cancer. Your risk is increased if you have already gone through menopause.",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Radiation on the Chest",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "Having radiation therapy to the chest before the age of 30 can increase your risk for breast cancer.",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Hormone Replacement Therapy",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "Taking combined hormone replacement therapy, as prescribed for menopause, can increase your risk for breast cancer and increase the risk that the cancer will be detected at a more advanced stage.",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Breastfeeding",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "Some studies suggest that breastfeeding may slightly lower breast cancer risk, especially if it is continued for 1½ to 2 years. One explanation for this effect may be that breastfeeding reduces a woman’s total number of lifetime menstrual cycles (similar to starting menstrual periods at a later age or going through early menopause).",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Smoking",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "Smoking causes several diseases and is linked to a higher risk of breast cancer in younger and premenopausal women. Research shows there may be a link between very heavy second-hand smoke exposure and breast cancer risk in postmenopausal women.",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 5.h),
            Text(
              "Drinking Alcohol",
              style: AppTypography.kBold14,
            ),
            SizedBox(height: 5.h),
            Text(
              "Consumption of alcohol can increase your risk of breast cancer. The more alcohol you consume, the greater is the risk.",
              style: AppTypography.kLight14.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 100.h),
            // Image.asset(AppAssets.kAlcohol),
          ],
        ),
      )),
    );
  }
}
