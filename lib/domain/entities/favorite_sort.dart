import 'package:ethiscan/domain/entities/sort_criteria.dart';

class FavoriteSort {
  final String? name;
  final bool? isRange;
  final DateTime? dateFrom;
  final DateTime? dateTo;
  final SortCriteria sortCriteria;

  FavoriteSort({
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
    String? name,
    bool? isRange,
    DateTime? dateFrom,
    DateTime? dateTo,
    SortCriteria? sortCriteria,
  }) {
    return FavoriteSort(
      name: name ?? this.name,
      isRange: isRange ?? this.isRange,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      sortCriteria: sortCriteria ?? this.sortCriteria,
    );
  }
}