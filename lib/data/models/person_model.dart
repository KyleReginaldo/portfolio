// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PersonModel {
  final String name;
  final String firstPicture;
  final String secondPicture;
  final String thirdPicture;
  final String fourthPicture;
  final String description;
  final Color color;
  PersonModel({
    required this.name,
    required this.firstPicture,
    required this.secondPicture,
    required this.thirdPicture,
    required this.fourthPicture,
    required this.description,
    required this.color,
  });
}
