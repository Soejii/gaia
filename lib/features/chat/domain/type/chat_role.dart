enum ChatRole {
  student,
  teacher,

  unknown;

  String get displayName {
    switch (this) {
      case ChatRole.student:
        return 'student';
      case ChatRole.teacher:
        return 'teacher';
      case ChatRole.unknown:
        return 'unknown';
    }
  }

  String get label {
    switch (this) {
      case ChatRole.student:
        return 'Murid';
      case ChatRole.teacher:
        return 'Guru';
      case ChatRole.unknown:
        return 'Tidak Diketahui';
    }
  }

  static ChatRole? fromString(String? roleString) {
    if (roleString == null || roleString.isEmpty) return ChatRole.unknown;

    switch (roleString.toLowerCase()) {
      case 'student':
        return ChatRole.student;
      case 'teacher':
        return ChatRole.teacher;
      default:
        return ChatRole.unknown;
    }
  }
}