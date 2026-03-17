import 'package:flutter/material.dart';

class FarmingTool {
  final String name;
  final String description;
  final IconData icon;
  final String route;

  FarmingTool({
    required this.name,
    required this.description,
    required this.icon,
    required this.route,
  });
}

class FarmingData with ChangeNotifier {
  final List<FarmingTool> farmingTools = [
    FarmingTool(
      name: 'AI Crop Yield Prediction',
      description: 'Predict crop yield, profit, and resources based on field data.',
      icon: Icons.grass,
      route: '/crop-yield',
    ),
    FarmingTool(
      name: 'Plant Disease Detection',
      description: 'Upload leaf images to detect diseases and get treatment tips.',
      icon: Icons.local_florist,
      route: '/disease-detection',
    ),
    FarmingTool(
      name: 'Smart Fertilizer Recommendation',
      description: 'Get fertilizer suggestions to reduce overuse and improve soil.',
      icon: Icons.science,
      route: '/fertilizer-rec',
    ),
    FarmingTool(
      name: 'Smart Irrigation Recommendation',
      description: 'Optimize water usage based on soil and weather data.',
      icon: Icons.water_drop,
      route: '/irrigation-rec',
    ),
    FarmingTool(
      name: 'Pest Detection System',
      description: 'Identify pests and get control solutions from images.',
      icon: Icons.bug_report,
      route: '/pest-detection',
    ),
    FarmingTool(
      name: 'Market Price Prediction',
      description: 'Predict crop prices and find best selling times/markets.',
      icon: Icons.trending_up,
      route: '/market-price',
    ),
    FarmingTool(
      name: 'Smart Crop Recommendation',
      description: 'Get crop suggestions based on soil, weather, and demand.',
      icon: Icons.agriculture,
      route: '/crop-rec',
    ),
    FarmingTool(
      name: 'Voice Assistant for Farmers',
      description: 'Ask farming questions and get voice responses in local languages.',
      icon: Icons.mic,
      route: '/voice-assistant',
    ),
    FarmingTool(
      name: 'Farm Resource Calculator',
      icon: Icons.calculate,
      description: 'Calculate seeds, fertilizer, and water needs for your farm.',
      route: '/resource-calc',
    ),
    FarmingTool(
      name: 'Weather-Based Farming Alerts',
      description: 'Get alerts for rain, storms, and heat waves to protect crops.',
      icon: Icons.cloud,
      route: '/weather-alerts',
    ),
  ];

  // TODO: Add methods for fetching real data from Supabase once connected
  // e.g., Future<void> fetchWeatherData() async { ... }
}
