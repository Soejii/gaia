import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/shared/core/constant/app_colors.dart';
import 'package:gaia/shared/core/constant/assets_helper.dart';
import 'package:gaia/shared/core/infrastructure/routes/route_name.dart';
import 'package:go_router/go_router.dart';

class QuickSubjectButton extends StatelessWidget {
  const QuickSubjectButton({
    super.key,
    required this.id,
    required this.iconCode,
    required this.title,
  });

  final int id;
  final String iconCode;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          context.pushNamed(
          RouteName.detailSubject,
          pathParameters: {'id': id.toString()},
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 96.h,
            width: 96.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(201, 238, 255, 1),
                  Color.fromRGBO(200, 238, 255, 0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: SizedBox(
                height: 80.h,
                width: 80.h,
                child: Image.asset(
                  iconImage(iconCode),
                ),
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.secondaryText,
            ),
          )
        ],
      ),
    );
  }

  String iconImage(String iconCode) {
    switch (iconCode) {
      case 'senbud':
        return AssetsHelper.imgSubjectSeni;
      case 'pai':
        return AssetsHelper.imgSubjectPai;
      case 'ipa':
        return AssetsHelper.imgSubjectIpa;
      case 'ekonomi':
        return AssetsHelper.imgSubjectEkonomi;
      case 'kimia':
        return AssetsHelper.imgSubjectKimia;
      case 'sosiologi':
        return AssetsHelper.imgSubjectIps;
      case 'ips':
        return AssetsHelper.imgSubjectIps;
      case 'geografi':
        return AssetsHelper.imgSubjectGeografi;
      case 'bind':
        return AssetsHelper.imgSubjectIndonesia;
      case 'tik':
        return AssetsHelper.imgSubjectTik;
      case 'mtk':
        return AssetsHelper.imgSubjectMatematika;
      case 'pkn':
        return AssetsHelper.imgSubjectKewarganegaraan;
      case 'fisika':
        return AssetsHelper.imgSubjectFisika;
      case 'biologi':
        return AssetsHelper.imgSubjectBiologi;
      case 'sejarah':
        return AssetsHelper.imgSubjectSejarah;
      case 'bing':
        return AssetsHelper.imgSubjectInggris;
      default:
        return AssetsHelper.imgSubjectPlaceholder;
    }
  }
}
