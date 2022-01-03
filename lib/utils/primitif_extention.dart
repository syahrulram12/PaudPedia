extension PaudString on String? {
  String orEmpty() {
    return this ?? "";
  }
}

extension PaudInt on int? {
  int orZero() {
    return this ?? 0;
  }
}

extension PaudList on List {
  Map<String, T> toMap<T>(String Function(T) setKey) {
    Map<String, T> newMap = new Map<String, T>();

    this.forEach((element) {
      newMap[setKey.call(element)] = element;
    });

    return newMap;
  }
}
