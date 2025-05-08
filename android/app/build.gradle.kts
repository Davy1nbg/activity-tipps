import java.util.Properties
import java.io.FileInputStream

// Lädt die Keystore-Eigenschaften
val keystorePropertiesFile = rootProject.file("key.properties") // Stellt sicher, dass key.properties im 'android'-Ordner liegt
val keystoreProperties = Properties() // Jetzt sollte 'Properties' bekannt sein

if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile)) // Jetzt sollte 'FileInputStream' bekannt sein
}

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.activity_tipps"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "de.lg_sota.activity_tipps"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        create("release") {
            if (keystorePropertiesFile.exists() && keystoreProperties.containsKey("storeFile")) {
                storeFile = file(keystoreProperties.getProperty("storeFile"))
                storePassword = keystoreProperties.getProperty("storePassword")
                keyAlias = keystoreProperties.getProperty("keyAlias")
                keyPassword = keystoreProperties.getProperty("keyPassword")
            } else {
                // Fallback oder Fehlermeldung, falls key.properties oder Einträge fehlen
                // Für CI-Builds könnte man hier auf Debug-Signing zurückfallen, aber für lokale Release-Builds ist ein Fehler besser.
                println("Warning: Keystore properties not found, release build will not be signed properly!")
            }
        }
    }

    buildTypes {
getByName("release") {
            // ... Ihre anderen Release-Einstellungen wie minifyEnabled, shrinkResources etc. ...

            // Weist die oben erstellte "release"-Signaturkonfiguration zu
            signingConfig = signingConfigs.getByName("release")
            // oder expliziter, falls die obige Zeile Probleme macht:
            // setSigningConfig(signingConfigs.getByName("release"))
        }
        // getByName("debug") {
        //     // Debug-spezifische Einstellungen
        // }
    }
}

flutter {
    source = "../.."
}
