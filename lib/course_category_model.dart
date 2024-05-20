class CourseCategory {
  final int id;
  final String name;
  final String text;
  final String slug;

  CourseCategory({required this.id, required this.name, required this.text, required this.slug});

  factory CourseCategory.fromJson(Map<String, dynamic> json) {
    return CourseCategory(
      id: json['id'],
      name: json['name'],
      text: json['text'],
      slug: json['slug'],
    );
  }
}