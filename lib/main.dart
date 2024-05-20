import 'package:flutter/material.dart';
import 'package:utees/api_service.dart';
import 'package:utees/course_category_widget.dart';
import 'package:utees/course_category_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<CourseCategory>> futureCategories;

  @override
  void initState() {
    super.initState();
    futureCategories = ApiService().fetchCourseCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Categories'),
      ),
      body: FutureBuilder<List<CourseCategory>>(
        future: futureCategories,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CourseCategoryWidget(category: snapshot.data![index]);
              },
            );
          }
        },
      ),
    );
  }
}