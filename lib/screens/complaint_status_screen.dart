import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/complaint_store.dart';

class ComplaintStatusScreen extends StatelessWidget {
  const ComplaintStatusScreen({super.key});

  Color _statusColor(String status) {
    switch (status) {
      case 'Resolved':
        return Colors.green;
      case 'In Progress':
        return Colors.orange;
      default:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    final complaints = context.watch<ComplaintStore>().complaints;

    return Scaffold(
      appBar: AppBar(title: const Text('My Complaints')),
      body: complaints.isEmpty
          ? const Center(child: Text('No complaints reported yet.'))
          : ListView.builder(
              itemCount: complaints.length,
              itemBuilder: (context, index) {
                final c = complaints[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: ListTile(
                    title: Text(c.title),
                    subtitle: Text('${c.category} • ${c.location}\nPriority: ${c.priority}'),
                    isThreeLine: true,
                    trailing: Chip(
                      label: Text(c.status, style: const TextStyle(color: Colors.white)),
                      backgroundColor: _statusColor(c.status),
                    ),
                  ),
                );
              },
            ),
    );
  }
}