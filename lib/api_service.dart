import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:utees/course_category_model.dart';

class ApiService {
  Future<List<CourseCategory>> fetchCourseCategories() async {
    final response = await http.get(Uri.parse('http://zonainformatika.com/api/coursecategories'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body)['data'];
      return jsonData.map((json) => CourseCategory.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load course categories');
    }
  }
}