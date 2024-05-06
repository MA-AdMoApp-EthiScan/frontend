import 'package:ethiscan/domain/entities/sort_criteria.dart';

class FavoriteSort {
  final bool active;
  final String? name;
  final bool? isRange;
  final DateTime? dateFrom;
  final DateTime? dateTo;
  final SortCriteria sortCriteria;

  FavoriteSort({
    this.active = false,
    this.name,
    this.isRange,
    this.dateFrom,
    this.dateTo,
    SortCriteria? sortCriteria,
  }) : sortCriteria = sortCriteria ?? SortCriteria() {
    if (isRange == true) {
      assert(dateFrom != null && dateTo != null);
    } else if (isRange == false) {
      assert(dateFrom != null && dateTo == null);
    }
  }

  FavoriteSort copyWith({
    bool? active,
    String? name,
    bool? isRange,
    DateTime? dateFrom,
    DateTime? dateTo,
    SortCriteria? sortCriteria,
  }) {
    return FavoriteSort(
      active: active ?? this.active,
      name: name ?? this.name,
      isRange: isRange ?? this.isRange,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      sortCriteria: sortCriteria ?? this.sortCriteria,
    );
  }

  @override
  String toString() {
    return 'FavoriteSort{active: $active, name: $name, isRange: $isRange, dateFrom: $dateFrom, dateTo: $dateTo, sortCriteria: $sortCriteria}';
  }
}