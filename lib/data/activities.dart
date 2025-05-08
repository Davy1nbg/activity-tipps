class Activity {
  final String name;
  Activity(this.name);
}

final Map<String, Map<String, List<Activity>>> activities = {
  'Sonnig': {
    'Fröhlich': [
      Activity('Joggen gehen'),
      Activity('Basketball spielen'),
      Activity('Fahrrad fahren'),
      Activity('Im Park spazieren gehen'),
    ],
    'Neutral': [
      Activity('Ein Buch lesen'),
      Activity('Musik hören'),
      Activity('An einem Puzzle arbeiten'),
    ],
  },
  'Regnerisch': {
    'Traurig': [
      Activity('Einen Film ansehen'),
      Activity('Ein neues Rezept kochen'),
    ],
    'Neutral': [
      Activity('Ein Online-Coding-Tutorial belegen'),
      Activity('Einen Tech-Blog lesen'),
      Activity('An einem persönlichen Codierungsprojekt arbeiten'),
    ],
  },
  'Bewölkt': {
    'Fröhlich': [
      Activity('Schwimmen gehen'),
      Activity('Ein Workout-Video machen'),
      Activity('Tennis spielen'),
      Activity('Wandern gehen'),
    ],
    'Neutral': [
      Activity('Einen Programmier-Podcast hören'),
      Activity('Eine Tech-Dokumentation ansehen'),
      Activity('Coding-Challenges üben'),
      Activity('Eine neue Programmiersprache lernen'),
    ],
    'Traurig': [Activity('Videospiele spielen')],
  },
};
