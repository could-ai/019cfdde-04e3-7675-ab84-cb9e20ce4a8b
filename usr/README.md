# Smart Farming Assistant

An AI-powered Flutter app to help farmers make better decisions using AI, ML, and Computer Vision.

## Features

- **Dashboard**: Grid of 10 farming tools with icons, names, and descriptions.
- **AI Crop Yield Prediction**: Input field data, get mock yield/profit estimates.
- **Plant Disease Detection**: Placeholder for image upload and analysis.
- **Smart Fertilizer Recommendation**: Form for crop/soil inputs, mock suggestions.
- **Smart Irrigation Recommendation**: Inputs for soil/weather, mock water advice.
- **Pest Detection System**: Placeholder for pest image analysis.
- **Market Price Prediction**: Mock price predictions with charts.
- **Smart Crop Recommendation**: Inputs for conditions, mock crop suggestions.
- **Voice Assistant for Farmers**: Placeholder for voice queries.
- **Farm Resource Calculator**: Calculators for seeds/fertilizer/water.
- **Weather-Based Farming Alerts**: Mock weather alerts.

## Getting Started

1. Run `flutter pub get` to install dependencies.
2. Run the app: `flutter run` (works on mobile/web).
3. Navigate the dashboard and explore features (mock data used).

## Notes

- Supabase not connected: AI/ML, APIs (weather/market), and persistence are mocked.
- To enable real features: Connect Supabase, add Edge Functions for AI/API routing, and store secrets.
- No API keys embedded; share keys to store as Supabase secrets.
- Web preview issues (e.g., CORS) can be resolved by testing on device or using proxies once Supabase is set up.

## Tech Stack (Adapted for Flutter)

- **Frontend**: Flutter (Material Design, responsive UI).
- **State Management**: Provider.
- **AI/ML**: Mocked (needs Supabase Edge Functions with TensorFlow/PyTorch).
- **APIs**: Mocked (needs Supabase for weather/market data).
- **Database**: Mocked (needs Supabase for persistence).
