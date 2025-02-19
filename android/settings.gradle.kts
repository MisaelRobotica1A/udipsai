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

// Establecer correctamente la ruta del directorio Flutter para el módulo ":app"
project(":app").projectDir = File("C:/Users/Usuario/Desktop/flutter")

