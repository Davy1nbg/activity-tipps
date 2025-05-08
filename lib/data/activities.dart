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
      Activity('Picknick im Freien'),
      Activity('Beachvolleyball spielen'),
    ],
    'Neutral': [
      Activity('Ein Buch lesen'),
      Activity('Musik hören'),
      Activity('An einem Puzzle arbeiten'),
      Activity('Fotografieren in der Natur'),
      Activity('Gartenarbeit'),
    ],
    'Traurig': [
      Activity('Einen ruhigen Spaziergang machen und die Sonne genießen'),
      Activity('Meditieren im Freien'),
      Activity('Ein Eis essen gehen'),
    ],
    'Gelangweilt': [
      Activity('Einen neuen Ort in der Stadt erkunden'),
      Activity('Geocaching ausprobieren'),
      Activity('Eine neue Sportart im Freien testen'),
    ],
    'Gestresst': [
      Activity('In der Sonne entspannen und tief durchatmen'),
      Activity('Yoga im Park machen'),
      Activity('Ein entspannendes Hörbuch im Freien hören'),
    ],
    'Motiviert': [
      Activity('Eine lange Wanderung oder Fahrradtour planen und durchführen'),
      Activity('Ein Outdoor-Fitnessprogramm starten'),
      Activity('Ein größeres Gartenprojekt angehen'),
    ],
    'Entspannt': [
      Activity('In der Hängematte liegen und ein Buch lesen'),
      Activity('Den Wolken zusehen'),
      Activity('Barfuß über eine Wiese laufen'),
    ],
  },
  'Leicht bewölkt': {
    'Fröhlich': [
      Activity('Spaziergang im Freien, angenehme Temperaturen genießen'),
      Activity('Ein Café mit Außensitzplätzen besuchen'),
      Activity('Eine Runde Frisbee spielen'),
    ],
    'Neutral': [
      Activity('Fotografieren (interessante Lichtverhältnisse)'),
      Activity('Draußen ein Buch lesen (nicht zu grell)'),
      Activity('Leichte Gartenarbeit'),
    ],
    'Traurig': [
      Activity('Einen nachdenklichen Spaziergang machen'),
      Activity('Ruhige Musik hören und die Wolken beobachten'),
    ],
    'Gelangweilt': [
      Activity('Einen lokalen Markt besuchen'),
      Activity('Eine neue Laufstrecke erkunden'),
    ],
    'Gestresst': [
      Activity('Achtsamkeitsübungen im Freien'),
      Activity('Ein Picknick mit beruhigender Aussicht'),
    ],
    'Motiviert': [
      Activity('Eine sportliche Aktivität im Freien, die nicht volle Sonne erfordert'),
      Activity('Ein DIY-Projekt im Garten oder auf dem Balkon starten'),
    ],
    'Entspannt': [
      Activity('Auf einer Parkbank sitzen und Leute beobachten'),
      Activity('Ein leichtes Stretching im Freien'),
    ],
  },
  'Überwiegend bewölkt': {
    'Fröhlich': [
      Activity('Eine Stadtführung machen'),
      Activity('Ein Museum mit Außengelände besuchen'),
      Activity('Eine Radtour zu einem neuen Ziel'),
    ],
    'Neutral': [
      Activity('Einen Kaffee trinken und Leute beobachten'),
      Activity('Eine neue Route für einen Spaziergang erkunden'),
      Activity('Ein Open-Air-Konzert oder eine Veranstaltung besuchen (wenn wetterfest)'),
    ],
    'Traurig': [
      Activity('In einem gemütlichen Café ein Buch lesen'),
      Activity('Einen langen Spaziergang mit nachdenklicher Musik'),
    ],
    'Gelangweilt': [
      Activity('Eine Bibliothek oder Buchhandlung erkunden'),
      Activity('Ein neues Hobby ausprobieren, das drinnen und draußen geht (z.B. Skizzieren)'),
    ],
    'Gestresst': [
      Activity('Einen ruhigen Ort in der Natur suchen'),
      Activity('Ein entspannendes Bad nehmen, wenn man wieder drinnen ist'),
    ],
    'Motiviert': [
      Activity('Eine längere Joggingrunde, da es nicht zu heiß ist'),
      Activity('Aufräumarbeiten im Garten oder auf dem Balkon'),
    ],
    'Entspannt': [
      Activity('Einen langsamen Spaziergang durch einen botanischen Garten'),
      Activity('Meditieren an einem ruhigen Ort'),
    ],
  },
  'Bedeckt': {
    'Fröhlich': [
      Activity('Ein Indoor-Schwimmbad besuchen'),
      Activity('Einen Kochkurs machen'),
      Activity('Freunde zu einem Spieleabend einladen'),
    ],
    'Neutral': [
      Activity('Ein Museum besuchen'),
      Activity('Ein Café besuchen und schreiben oder arbeiten'),
      Activity('Eine Bibliothek erkunden'),
    ],
    'Traurig': [
      Activity('Einen gemütlichen Film-Marathon starten'),
      Activity('Ein warmes Bad nehmen und entspannen'),
      Activity('Ein Tagebuch schreiben'),
    ],
    'Gelangweilt': [
      Activity('Ein neues, komplexes Rezept ausprobieren'),
      Activity('Ein Online-Tutorial zu einem neuen Skill ansehen'),
      Activity('Keller oder Dachboden ausmisten'),
    ],
    'Gestresst': [
      Activity('Yoga oder Pilates zu Hause machen'),
      Activity('Eine geführte Meditation anhören'),
      Activity('Ein entspannendes Puzzle legen'),
    ],
    'Motiviert': [
      Activity('Die Wohnung gründlich putzen und organisieren'),
      Activity('Ein lang aufgeschobenes Projekt im Haus angehen'),
      Activity('Einen Plan für die kommende Woche erstellen'),
    ],
    'Entspannt': [
      Activity('Ein gutes Buch mit einer Tasse Tee lesen'),
      Activity('Entspannende Musik hören und nichts tun'),
      Activity('Einen Mittagsschlaf machen'),
    ],
  },
  'Nebel': {
    'Fröhlich': [
      Activity('Eine mystische Fototour machen (vorsichtig sein!)'),
      Activity('Eine Gruselgeschichte erzählen oder lesen'),
    ],
    'Neutral': [
      Activity('Ein Buch im Warmen lesen'),
      Activity('Einen Podcast hören'),
      Activity('Meditieren oder Yoga praktizieren (drinnen)'),
    ],
    'Traurig': [
      Activity('Einen gemütlichen Film schauen'),
      Activity('Ein warmes Bad nehmen'),
      Activity('Sich mit einer Decke einkuscheln'),
    ],
    'Gelangweilt': [
      Activity('Ein Brettspiel oder Kartenspiel spielen'),
      Activity('Etwas Neues lernen (Sprache, Instrument)'),
    ],
    'Gestresst': [
      Activity('Atemübungen machen'),
      Activity('Beruhigende Musik hören'),
    ],
    'Motiviert': [
      Activity('Indoor-Projekte planen'),
      Activity('Online-Recherche für ein Hobby'),
    ],
    'Entspannt': [
      Activity('Dem Knistern eines (virtuellen) Kamins lauschen'),
      Activity('Eine Tasse heißen Tee oder Kakao genießen'),
    ],
  },
  'Leichter Regen': {
    'Fröhlich': [
      Activity('Unter einem Vordach sitzen und den Regen beobachten'),
      Activity('Einen lustigen Film ansehen'),
      Activity('Ein kreatives Projekt starten (Malen, Schreiben)'),
    ],
    'Neutral': [
      Activity('Ein Buch lesen am Fenster'),
      Activity('Ein Brettspiel spielen'),
      Activity('Ein neues Rezept ausprobieren'),
    ],
    'Traurig': [
      Activity('Melancholische Musik hören und aus dem Fenster schauen'),
      Activity('Einen nachdenklichen Film ansehen'),
    ],
    'Gelangweilt': [
      Activity('Ein Online-Spiel spielen'),
      Activity('Ein Zimmer neu dekorieren oder umstellen'),
      Activity('Keller oder Dachboden ausmisten'),
    ],
    'Gestresst': [
      Activity('Ein warmes Bad nehmen'),
      Activity('Eine Tasse Tee trinken und entspannen'),
    ],
    'Motiviert': [
      Activity('Hausarbeiten erledigen'),
      Activity('E-Mails beantworten und organisieren'),
    ],
    'Entspannt': [
      Activity('Dem Regen lauschen'),
      Activity('Ein Nickerchen machen'),
    ],
  },
  'Mäßiger Regen': {
    'Fröhlich': [Activity('Einen Spieleabend mit Freunden veranstalten (online oder offline)')],
    'Neutral': [Activity('Ein Online-Coding-Tutorial belegen'), Activity('Einen Tech-Blog lesen')],
    'Traurig': [Activity('Einen Film-Marathon starten')],
    'Gelangweilt': [Activity('Ein komplexes Puzzle beginnen')],
    'Gestresst': [Activity('Meditieren oder eine geführte Entspannung machen')],
    'Motiviert': [Activity('Ein größeres Indoor-Projekt planen und beginnen')],
    'Entspannt': [Activity('Ein gutes Buch lesen und sich einkuscheln')],
  },
  'Starker Regen': {
    'Fröhlich': [Activity('Eine Indoor-Party schmeißen (klein und fein)')],
    'Neutral': [Activity('Ein spannendes Buch lesen'), Activity('Einen Dokumentarfilm ansehen')],
    'Traurig': [Activity('Sich mit einer Decke einkuscheln und schlafen')],
    'Gelangweilt': [Activity('Ein neues Instrument lernen (Online-Tutorials)')],
    'Gestresst': [Activity('Ein langes, heißes Bad oder eine Dusche nehmen')],
    'Motiviert': [Activity('Digitale Dateien organisieren (Fotos, Dokumente)')],
    'Entspannt': [Activity('Nichts tun und dem Regen lauschen')],
  },
  'Gewitter': {
    'Fröhlich': [Activity('Brettspiele bei Kerzenschein (wenn sicher)')],
    'Neutral': [Activity('Dem Regen und Donner lauschen (sicher drinnen)'), Activity('Ein Buch lesen')],
    'Traurig': [Activity('Sich mit einer Decke einkuscheln und einen beruhigenden Film schauen')],
    'Gelangweilt': [Activity('Geschichten erzählen oder schreiben')],
    'Gestresst': [Activity('Atemübungen zur Beruhigung')],
    'Motiviert': [Activity('Notfallpläne überprüfen (scherzhaft oder ernst)')],
    'Entspannt': [Activity('Bei gedämpftem Licht entspannen')],
  },
  'Schnee': {
    'Fröhlich': [
      Activity('Schneemann bauen'),
      Activity('Schlitten fahren'),
      Activity('Spaziergang im Schnee'),
      Activity('Schneeballschlacht'),
    ],
    'Neutral': [Activity('Heiße Schokolade trinken und aus dem Fenster schauen'), Activity('Schneeschippen (kann auch neutral sein)')],
    'Traurig': [Activity('Warme Decke, Buch und Blick nach draußen')],
    'Gelangweilt': [Activity('Schneeflocken unter der Lupe betrachten'), Activity('Winterliche Fotos machen')],
    'Gestresst': [Activity('Ein warmes Bad nach einem kalten Tag')],
    'Motiviert': [Activity('Schneeschippen für sich und Nachbarn'), Activity('Wintergrillen (für die Mutigen)')],
    'Entspannt': [Activity('Am Kamin sitzen (wenn vorhanden)'), Activity('Winterliche Musik hören')],
  },
  'Schneeregen': {
    'Fröhlich': [Activity('Einen lustigen Indoor-Spiele-Tag machen')],
    'Neutral': [Activity('Drinnen bleiben und etwas Kreatives machen (Malen, Schreiben)')],
    'Traurig': [Activity('Einen warmen Tee trinken und entspannen')],
    'Gelangweilt': [Activity('Ein neues Hobby online recherchieren und starten')],
    'Gestresst': [Activity('Eine beruhigende Playlist hören')],
    'Motiviert': [Activity('Die nächste Urlaubsreise planen')],
    'Entspannt': [Activity('Sich einkuscheln und einen Film schauen')],
  },
  'Hagel': {
    'Neutral': [Activity('Sicher drinnen bleiben und abwarten'), Activity('Das Wetterphänomen beobachten (aus sicherer Entfernung)')],
    'Gelangweilt': [Activity('Ein Buch lesen oder einen Film schauen, bis es vorbei ist')],
    'Fröhlich': [Activity('Ein lustiges Brettspiel oder Kartenspiel spielen und dabei die Hagelkörner draußen trommeln hören.')],
    'Traurig': [Activity('Einen fröhlichen Film oder eine Comedy-Serie schauen und es sich gemütlich machen.')]
  },
  'Windig': {
    'Fröhlich': [
      Activity('Drachen steigen lassen (wenn nicht zu stark und sicher)'),
      Activity('Windspiele beobachten/hören'),
      Activity('Einen Strandspaziergang machen (wenn man die steife Brise mag)'),
    ],
    'Neutral': [Activity('Ein Buch lesen (drinnen, gemütlich, wenn es draußen zu ungemütlich ist)')],
    'Traurig': [Activity('Dem Wind lauschen und nachdenken (drinnen)')],
    'Gelangweilt': [Activity('Experimente mit Wind durchführen (z.B. Papierflieger)')],
    'Gestresst': [Activity('Sich an einen windgeschützten Ort zurückziehen und entspannen')],
    'Motiviert': [Activity('Segeln oder Windsurfen (für Erfahrene und bei passenden Bedingungen)')],
    'Entspannt': [Activity('Den Wind in den Bäumen beobachten (von drinnen)')],
  },
  'Sturm': {
    'Neutral': [
      Activity('Sicherheitsvorkehrungen treffen'),
      Activity('Nachrichten verfolgen (drinnen bleiben)'),
      Activity('Überprüfen, ob alles sturmsicher ist'),
    ],
    'Gelangweilt': [Activity('Ein spannendes Buch lesen oder einen langen Film ansehen')],
    'Gestresst': [Activity('Beruhigende Musik hören und versuchen, ruhig zu bleiben')],
    // Andere Stimmungen sind sekundär zur Sicherheit.
  }
};