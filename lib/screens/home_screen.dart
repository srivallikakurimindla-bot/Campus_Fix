import 'package:flutter/material.dart';
import 'report_complaint_screen.dart';
import 'complaint_status_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const categories = [
    'Electricity', 'Water Leakage', 'Furniture',
    'Fans/AC', 'Washroom', 'Wi-Fi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CampusFix')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Report and track campus issues',
                style: TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 20),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: categories
                  .map((c) => Chip(label: Text(c)))
                  .toList(),
            ),
            const Spacer(),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text('Report a Complaint'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ReportComplaintScreen()),
              ),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              icon: const Icon(Icons.list_alt),
              label: const Text('View My Complaints'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ComplaintStatusScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}