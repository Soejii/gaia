import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class DetailSubModuleScreen extends StatelessWidget {
  const DetailSubModuleScreen({super.key, required this.idSubModule});
  final int idSubModule;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Detail Sub Modul',
        leadingIcon: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'Simple Past Tense',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.mainText,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              '12 September 2024',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.secondaryText,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Html(
              data: 'htmlData',
              style: {
                "body": Style(
                  color: AppColors.mainText,
                  fontFamily: "Open Sans",
                  fontSize: FontSize(14.sp),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  lineHeight: LineHeight.normal,
                ),
                "h1": Style(
                    fontSize: FontSize(22.sp), fontWeight: FontWeight.bold),
                "h2": Style(
                    fontSize: FontSize(20.sp), fontWeight: FontWeight.bold),
                "h3": Style(
                    fontSize: FontSize(18.sp), fontWeight: FontWeight.w600),
                "p": Style(margin: Margins.zero),
                "ul": Style(margin: Margins.zero, padding: HtmlPaddings.zero),
                "li": Style(margin: Margins.zero),
                "strong": Style(fontWeight: FontWeight.w600),
                "em": Style(fontStyle: FontStyle.italic),
              },
            ),
          ),
        ],
      ),
    );
  }
}
