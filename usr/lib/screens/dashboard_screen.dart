import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/farming_data.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final farmingData = Provider.of<FarmingData>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Farming Assistant'),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Your AI-Powered Farming Dashboard',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Select a tool below to get AI-driven farming insights.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,  // Responsive: 3 columns on larger screens
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: farmingData.farmingTools.map((tool) {
                  return FarmingToolCard(
                    tool: tool,
                    onTap: () => Navigator.pushNamed(context, tool.route),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FarmingToolCard extends StatelessWidget {
  final FarmingTool tool;
  final VoidCallback onTap;

  const FarmingToolCard({super.key, required this.tool, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(tool.icon, size: 48, color: Colors.green[700]),
              const SizedBox(height: 8),
              Text(
                tool.name,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                tool.description,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
