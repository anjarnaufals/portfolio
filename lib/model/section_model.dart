// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Section {
  final int id;
  final String label;
  final Widget section;
  final String asset;
  const Section({
    required this.id,
    required this.label,
    required this.section,
    required this.asset,
  });
}
