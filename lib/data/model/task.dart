class Task {
  String title;
  String student_id;
  String updated_at;
  String created_at;
  int id;
  bool is_done;
  Task({
    required this.title,
    required this.id,
    required this.created_at,
    required this.updated_at,
    required this.is_done,
    required this.student_id,
  });
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
        title: json['title'],
        id: json['id'],
        created_at: json['created_at'],
        updated_at: json['updated_at'],
        is_done: json['is_done'],
        student_id: "${json['student_id']}");
  }
  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "student_id": student_id,
      "updated_at": updated_at,
      "created_at": created_at,
      "id": id,
      "is_done": is_done
    };
  }
}
