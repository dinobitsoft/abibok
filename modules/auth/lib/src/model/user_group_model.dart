enum UserGroup {
  system('ABK_SYSTEM'),
  employee('ABK_EMPLOYEE'),
  admin('ABK_ADMIN'),
  other('ABK_OTHER');

  final String value;
  const UserGroup(this.value);

  static final Map<String, UserGroup> byValue = {};
  static UserGroup? getByValue(String value) {
    if (byValue.isEmpty) {
      for (UserGroup userGroup in UserGroup.values) {
        byValue[userGroup.value] = userGroup;
      }
    }
    return byValue[value];
  }

  static List<UserGroup> getValues() => UserGroup.values
      .where((userGroup) => userGroup != UserGroup.system)
      .toList();
  @override
  String toString() {
    return value;
  }
}
