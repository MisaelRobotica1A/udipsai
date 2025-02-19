buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        // Este es el classpath estándar para Android
        classpath("com.android.tools.build:gradle:7.4.1")
        // Este es el classpath de Kotlin
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:1.8.0")
    }
}

pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.PREFER_SETTINGS)
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.name = "udipsai"
include(":app")

