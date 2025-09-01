import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaia/features/subject/data/types/media_type.dart';
import 'package:gaia/features/subject/presentation/widgets/media_card.dart';

class MediaContentWidget extends StatelessWidget {
  const MediaContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      children: const [
        MediaCard(type: MediaType.excel),
        MediaCard(type: MediaType.word),
        MediaCard(type: MediaType.pdf),
        MediaCard(type: MediaType.youtube),
        MediaCard(type: MediaType.video),
        MediaCard(type: MediaType.ppt),
      ],
    );
  }
}
