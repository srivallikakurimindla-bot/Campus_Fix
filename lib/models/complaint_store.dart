import 'package:flutter/foundation.dart';
import 'complaint.dart';

class ComplaintStore extends ChangeNotifier {
  final List<Complaint> _complaints = [];

  List<Complaint> get complaints => List.unmodifiable(_complaints);

  void addComplaint(Complaint complaint) {
    _complaints.add(complaint);
    notifyListeners();
  }

  void updateStatus(String id, String newStatus) {
    final complaint = _complaints.firstWhere((c) => c.id == id);
    complaint.status = newStatus;
    notifyListeners();
  }
}