import 'package:flutter/material.dart';
import 'attendance_status.dart';

extension AttendanceStatusExtension on AttendanceStatus {
  String get displayName {
    switch (this) {
      case AttendanceStatus.checkedIn:
        return 'Absen Masuk';
      case AttendanceStatus.checkedOut:
        return 'Absen Pulang';
      case AttendanceStatus.absent:
        return 'Alpha';
      case AttendanceStatus.permit:
        return 'Izin';
      case AttendanceStatus.sick:
        return 'Sakit';
    }
  }

  Color get color {
    switch (this) {
      case AttendanceStatus.checkedIn:
        return const Color(0xFF009ADE);
      case AttendanceStatus.checkedOut:
        return const Color(0xFF5AAF55);
      case AttendanceStatus.absent:
        return const Color(0xFF526789);
      case AttendanceStatus.permit:
        return const Color(0xFFF2C94C);
      case AttendanceStatus.sick:
        return const Color(0xFFFF7171);
    }
  }
}