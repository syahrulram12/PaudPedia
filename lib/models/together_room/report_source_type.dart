enum ReportSourceType { FORUM, TOPIC }

extension ReportSourceTypeExtension on ReportSourceType {
  String get type {
    switch (this) {
      case ReportSourceType.FORUM:
        return "1";
      default:
        return "2";
    }
  }
}
