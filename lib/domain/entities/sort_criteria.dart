class SortCriteria {
  final SortField field;
  final SortOrder order;

  SortCriteria({
    this.field = SortField.name,
    this.order = SortOrder.ascending,
  });

  @override
  String toString() {
    return 'SortCriteria{field: $field, order: $order}';
  }

  SortCriteria copyWith({
    SortField? field,
    SortOrder? order,
  }) {
    return SortCriteria(
      field: field ?? this.field,
      order: order ?? this.order,
    );
  }
}

enum SortOrder { ascending, descending }

enum SortField { name, scanDate }
