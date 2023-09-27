import 'package:flutter/material.dart';

class TextProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> reports = [];

  void addReport(Map<String, dynamic> report) {
    reports.add(report);
  }
}
