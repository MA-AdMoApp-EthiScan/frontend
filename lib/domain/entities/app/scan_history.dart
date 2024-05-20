class ScanHistory {
  final String barcodeId;
  final String? name;
  final DateTime? date;

  ScanHistory({required this.barcodeId, this.name, this.date});

  // Convert a ScanHistory object into a Map
  Map<String, dynamic> toMap() {
    return {
      'barcodeId': barcodeId,
      'name': name,
      'date': date?.toIso8601String(),
    };
  }

  // Convert a Map into a ScanHistory object
  static ScanHistory fromMap(Map<String, dynamic> map) {
    return ScanHistory(
      barcodeId: map['barcodeId'],
      name: map['name'],
      date: map['date'] != null ? DateTime.parse(map['date']) : null,
    );
  }
}