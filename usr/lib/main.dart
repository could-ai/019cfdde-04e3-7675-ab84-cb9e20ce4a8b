import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/dashboard_screen.dart';
import 'models/farming_data.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FarmingData()),
      ],
      child: const SmartFarmingApp(),
    ),
  );
}

class SmartFarmingApp extends StatelessWidget {
  const SmartFarmingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Farming Assistant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // Agricultural theme with earthy colors
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
        '/crop-yield': (context) => const CropYieldPredictionScreen(),
        '/disease-detection': (context) => const DiseaseDetectionScreen(),
        '/fertilizer-rec': (context) => const FertilizerRecommendationScreen(),
        '/irrigation-rec': (context) => const IrrigationRecommendationScreen(),
        '/pest-detection': (context) => const PestDetectionScreen(),
        '/market-price': (context) => const MarketPricePredictionScreen(),
        '/crop-rec': (context) => const CropRecommendationScreen(),
        '/voice-assistant': (context) => const VoiceAssistantScreen(),
        '/resource-calc': (context) => const ResourceCalculatorScreen(),
        '/weather-alerts': (context) => const WeatherAlertsScreen(),
      },
    );
  }
}

// Placeholder screens for each feature (implemented below)
class CropYieldPredictionScreen extends StatelessWidget {
  const CropYieldPredictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AI Crop Yield Prediction')),
      body: const Center(child: Text('Feature under development - mock data shown below')),
    );
  }
}

class DiseaseDetectionScreen extends StatelessWidget {
  const DiseaseDetectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Plant Disease Detection')),
      body: const Center(child: Text('Upload image for analysis (placeholder)')),
    );
  }
}

class FertilizerRecommendationScreen extends StatelessWidget {
  const FertilizerRecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Smart Fertilizer Recommendation')),
      body: const Center(child: Text('Enter crop/soil details for recommendations')),
    );
  }
}

class IrrigationRecommendationScreen extends StatelessWidget {
  const IrrigationRecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Smart Irrigation Recommendation')),
      body: const Center(child: Text('Input soil/weather data for advice')),
    );
  }
}

class PestDetectionScreen extends StatelessWidget {
  const PestDetectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pest Detection System')),
      body: const Center(child: Text('Upload pest image for identification')),
    );
  }
}

class MarketPricePredictionScreen extends StatelessWidget {
  const MarketPricePredictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Market Price Prediction')),
      body: const Center(child: Text('View predicted prices and charts')),
    );
  }
}

class CropRecommendationScreen extends StatelessWidget {
  const CropRecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Smart Crop Recommendation')),
      body: const Center(child: Text('Get crop suggestions based on conditions')),
    );
  }
}

class VoiceAssistantScreen extends StatelessWidget {
  const VoiceAssistantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Voice Assistant for Farmers')),
      body: const Center(child: Text('Ask farming questions via voice')),
    );
  }
}

class ResourceCalculatorScreen extends StatelessWidget {
  const ResourceCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Farm Resource Calculator')),
      body: const Center(child: Text('Calculate seeds, fertilizer, water needs')),
    );
  }
}

class WeatherAlertsScreen extends StatelessWidget {
  const WeatherAlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather-Based Farming Alerts')),
      body: const Center(child: Text('View weather alerts for farming')),
    );
  }
}
