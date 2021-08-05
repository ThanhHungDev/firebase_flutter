class Auth {
  int id;
  String refresh;
  String access;
  String avatar;
  String firstName;
  String lastName;
  String email;
  String? firstNameFurigana;
  String? lastNameFurigana;
  String? birthDate;
  int? gender;
  int? roleId;
  String? secure;
  bool? active;

  Auth(
      {required this.id,
      required this.refresh,
      required this.access,
      required this.avatar,
      required this.firstName,
      required this.lastName,
      required this.email,
      this.firstNameFurigana,
      this.lastNameFurigana,
      this.birthDate,
      this.gender,
      this.roleId,
      this.secure,
      this.active});
}
