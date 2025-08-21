class ChangePasswordEntity {
  final String oldPassword;
  final String newPassword;

  const ChangePasswordEntity({
    required this.oldPassword,
    required this.newPassword,
  });
}
