import 'package:flutter/material.dart';
import 'package:weather_app/additional_information_item.dart';
import 'dart:ui';

import 'package:weather_app/hourly_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '45.6°C',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.cloud, size: 64),
                          Text('Rain', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Weather Podcast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                    hour: '12:00 PM',
                    icon: Icons.cloud,
                    temperature: '45°C',
                  ),
                  HourlyForecastItem(
                    hour: '1:00 PM',
                    icon: Icons.cloud,
                    temperature: '45°C',
                  ),
                  HourlyForecastItem(
                    hour: '2:00 PM',
                    icon: Icons.cloud,
                    temperature: '45°C',
                  ),
                  HourlyForecastItem(
                    hour: '3:00 PM',
                    icon: Icons.cloud,
                    temperature: '45°C',
                  ),
                  HourlyForecastItem(
                    hour: '4:00 PM',
                    icon: Icons.cloud,
                    temperature: '45°C',
                  ),
                  HourlyForecastItem(
                    hour: '5:00 PM',
                    icon: Icons.cloud,
                    temperature: '45°C',
                  ),
                  HourlyForecastItem(
                    hour: '6:00 PM',
                    icon: Icons.cloud,
                    temperature: '45°C',
                  ),
                  HourlyForecastItem(
                    hour: '7:00 PM',
                    icon: Icons.cloud,
                    temperature: '45°C',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Additional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AdditionalInfoItem(
                    icon: Icons.water_drop,
                    lable: 'Humidity',
                    value: '60%',
                  ),
                  AdditionalInfoItem(
                    icon: Icons.air,
                    lable: 'Wind Speed',
                    value: '5 km/h',
                  ),
                  AdditionalInfoItem(
                    icon: Icons.thermostat,
                    lable: 'Pressure',
                    value: '1013 hPa',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
