import 'package:flutter/material.dart';
import 'package:gaia/features/subject/presentation/widgets/detail_subject_app_bar_widget.dart';


class DetailSubjectScreen extends StatelessWidget {
  const DetailSubjectScreen({
    super.key,
    required this.idSubject,
  });
  final int idSubject;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          DetailSubjectAppBarWidget()
        ],
      ),
    );
  }
}
