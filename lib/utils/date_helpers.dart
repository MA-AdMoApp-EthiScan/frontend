import 'package:flutter/cupertino.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:intl/intl.dart';

class DateHelpers {
  DateHelpers._();

  static String formatDateToEuropeanStyle(DateTime date) {
    return DateFormat("dd.MM.yyyy").format(date);
  }

  static DateTime parseApiDate(String date) {
    try {
      return DateFormat("dd.MM.yyyy").parse(date);
    } catch (e) {
      return DateFormat("yyyy-MM-dd hh:mm:ss.ss").parse(date);
    }
  }

  static String formatDate(BuildContext context, DateTime date) {
    return "${formatWeekDay(context, date.weekday)} ${date.day} ${formatMonth(context, date.month)}";
  }

  static String formatDate2(BuildContext context, DateTime date) {
    return '${date.day} ${formatMonth(context, date.month)} ${date.year}';
  }

  static String formatWeekDay(BuildContext context, int weekDay) {
    return FlutterI18n.translate(context, 'date.day-$weekDay');
  }

  static String formatMonth(BuildContext context, int month) {
    return FlutterI18n.translate(context, 'date.month-$month');
  }

  static DateTime now() {
    return DateTime.now();
  }

  static DateTime noon(DateTime date) {
    return DateTime(date.year, date.month, date.day, 12);
  }

  static DateTime nowNoon() {
    return noon(now());
  }

  static DateTime midnight(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  static DateTime nowMidnight() {
    return midnight(now());
  }

  static bool isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  static DateTime firstDayOfWeek(DateTime date) {
    return noon(date).subtract(Duration(days: date.weekday - 1));
  }

  static DateTime lastDayOfWeek(DateTime date) {
    return noon(date).add(Duration(days: 7 - date.weekday));
  }

  static DateTime firstDayOfMonth(DateTime date) {
    return noon(DateTime(date.year, date.month));
  }

  static DateTime lastDayOfMonth(DateTime date) {
    return nextMonth(date).subtract(const Duration(days: 1));
  }

  static DateTime previousMonth(DateTime date) {
    return noon(
      date.month > 1
          ? DateTime(date.year, date.month - 1)
          : DateTime(date.year - 1, 12),
    );
  }

  static DateTime nextMonth(DateTime date) {
    return noon(
      date.month < 12
          ? DateTime(date.year, date.month + 1, 1)
          : DateTime(date.year + 1, 1),
    );
  }

  static List<DateTime> daysInRange(DateTime start, DateTime end) {
    var i = noon(start);

    if (isSameDay(start, end)) {
      return [start];
    } else if (end.isBefore(start)) {
      return [];
    }

    List<DateTime> list = [];

    while (!isSameDay(i, end)) {
      list.add(i);
      i = i.add(const Duration(days: 1));
    }

    list.add(end);

    return list;
  }

  static List<DateTime> calendarMonth(DateTime date) {
    return daysInRange(
      firstDayOfWeek(firstDayOfMonth(date)),
      lastDayOfWeek(lastDayOfMonth(date)),
    );
  }
}
