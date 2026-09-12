class Complaint {
  final String id;
  final String title;
  final String category;
  final String location;
  final String description;
  final String priority; // Low, Medium, High
  String status; // Pending, In Progress, Resolved
  final DateTime createdAt;

  Complaint({
    required this.id,
    required this.title,
    required this.category,
    required this.location,
    required this.description,
    required this.priority,
    this.status = 'Pending',
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();
}