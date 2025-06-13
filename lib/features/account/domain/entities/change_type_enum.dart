enum ChangeType {
  creation,
  modification,
  undefined;

  ChangeType currencyFromString(String string) => switch (string) {
        'CREATION' => ChangeType.creation,
        'MODIFICATION' => ChangeType.modification,
        _ => ChangeType.undefined
      };
  static ChangeType fromString(String string) {
    switch (string.toUpperCase()) {
      case 'CREATION':
        return ChangeType.creation;
      case 'MODIFICATION':
        return ChangeType.modification;
      default:
        return ChangeType.undefined;
    }
  }
}

extension ChangeTypeX on ChangeType {
  String get code {
    switch (this) {
      case ChangeType.creation:
        return 'CREATION';
      case ChangeType.modification:
        return 'MODIFICATION';
      case ChangeType.undefined:
        return 'UNDEFINED';
    }
  }
}
