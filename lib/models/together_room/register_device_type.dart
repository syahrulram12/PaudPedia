enum RegisterDeviceType {
  ANDROID,
  IOS,
}

extension RegisterDeviceTypeExtension on RegisterDeviceType {
  String get type {
    switch (this) {
      case RegisterDeviceType.IOS:
        return "3";
      default:
        return "2";
    }
  }
}
