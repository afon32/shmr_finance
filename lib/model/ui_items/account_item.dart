class AccountItem {
  final int id;
  final String name;

  AccountItem({required this.id, required this.name});

  @override
  bool operator ==(Object other) {
    if (other is AccountItem) {
      return id == other.id;
    }
    return false;
  }
}
