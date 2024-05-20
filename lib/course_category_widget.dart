import 'package:flutter/material.dart';
import 'package:utees/course_category_model.dart';

class CourseCategoryWidget extends StatelessWidget {
  final CourseCategory category;

  CourseCategoryWidget({required this.category});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(category.name),
      subtitle: Text(category.text),
    );
  }
}