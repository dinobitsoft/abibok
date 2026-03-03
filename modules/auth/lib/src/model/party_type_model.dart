enum PartyType {
  company('Company'),
  user('User'),
  unknown('');

  final String value;
  const PartyType(this.value);

  static final Map<String, PartyType> byValue = {};
  static PartyType? getByValue(String value) {
    if (byValue.isEmpty) {
      for (PartyType role in PartyType.values) {
        byValue[role.name] = role;
      }
    }
    return byValue[value];
  }

  static PartyType tryParse(String val) {
    switch (val.toLowerCase()) {
      case 'company':
        return company;
      case 'user':
        return user;
      default:
        return unknown; // default to user if not recognized
    }
  }

  @override
  String toString() {
    return value;
  }
}
