import 'package:flutter/material.dart';
import 'dart:math'; // Wird für Random benötigt
import 'package:activity_tipps/data/activities.dart'; // Stellen Sie sicher, dass der Pfad korrekt ist

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String? selectedWeather;
  String? selectedMood;
  final List<String> weatherOptions = ["Sonnig", "Regnerisch", "Bewölkt"];
  // Beachten Sie, dass nicht jede Wetterbedingung jede Stimmung in Ihren Daten hat.
  // z.B. "Sonnig" hat keine "Traurig"-Aktivitäten in den Beispieldaten.
  final List<String> moodOptions = ["Fröhlich", "Traurig", "Neutral"];
  String? suggestedActivity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('lg-sota.de Activity Tipps')),
      body: Center(
        child: Padding(
          // Padding hinzugefügt für besseres Aussehen
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Wetter und Stimmung auswählen:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ), // Etwas Styling
              ),
              const SizedBox(height: 20),
              DropdownButton<String>(
                isExpanded: true, // Lässt das Dropdown die volle Breite nutzen
                value: selectedWeather,
                hint: const Text('Wetter auswählen'),
                items:
                    weatherOptions.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    selectedWeather = value;
                    // Optional: suggestedActivity zurücksetzen, wenn Auswahl geändert wird
                    suggestedActivity = null;
                  });
                },
              ),
              const SizedBox(height: 20),
              DropdownButton<String>(
                isExpanded: true, // Lässt das Dropdown die volle Breite nutzen
                value: selectedMood,
                hint: const Text('Stimmung auswählen'),
                items:
                    moodOptions.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    selectedMood = value;
                    // Optional: suggestedActivity zurücksetzen, wenn Auswahl geändert wird
                    suggestedActivity = null;
                  });
                },
              ),
              const SizedBox(height: 30), // Mehr Abstand
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    suggestedActivity = _getSuggestedActivity(
                      selectedWeather,
                      selectedMood,
                    );
                  });
                },
                style: ElevatedButton.styleFrom(
                  // Etwas Styling für den Button
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
                child: const Text('Aktivität vorschlagen'), // Klarerer Text
              ),
              const SizedBox(height: 30), // Mehr Abstand
              if (suggestedActivity !=
                  null) // Nur anzeigen, wenn ein Vorschlag da ist
                Text(
                  'Vorgeschlagene Aktivität:\n$suggestedActivity',
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
            ],
          ),
        ),
      ),
    );
  }

  // Holt eine Aktivität basierend auf Wetter und Stimmung aus der `activities` Map
  Activity? _fetchActivityFromMap(String weather, String mood) {
    // Zugriff auf die importierte 'activities' Map
    final Map<String, List<Activity>>? moodMap = activities[weather];

    if (moodMap != null) {
      final List<Activity>? activityList = moodMap[mood];
      if (activityList != null && activityList.isNotEmpty) {
        Random random = Random();
        // Wähle eine zufällige Activity aus der gefilterten Liste
        return activityList[random.nextInt(activityList.length)];
      }
    }
    // Keine passende Aktivität für diese Kombination in der Map gefunden
    return null;
  }

  // Generiert den Text für die vorgeschlagene Aktivität
  String _getSuggestedActivity(String? weather, String? mood) {
    if (weather == null || mood == null) {
      return 'Bitte zuerst Wetter und Stimmung auswählen.';
    }

    // `weather` und `mood` sind hier garantiert nicht null.
    Activity? activity = _fetchActivityFromMap(weather, mood);

    if (activity != null) {
      return activity.name;
    } else {
      // Dieser Fall tritt ein, wenn die spezifische Wetter/Stimmung-Kombination
      // nicht in Ihrer `activities`-Map definiert ist (z.B. "Sonnig" und "Traurig").
      return 'Für diese Auswahl wurde leider keine passende Aktivität gefunden.';
    }
  }
}
