import 'package:flutter/material.dart';

class SortCriteria {
  final SortField field;
  final SortOrder order;

  SortCriteria({
    this.field = SortField.name,
    this.order = SortOrder.ascending,
  });

}

enum SortOrder { ascending, descending }

enum SortField { name, scanDate }