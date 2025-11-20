// Корневой build.gradle.kts

buildscript {
    dependencies {
        // Плагин Google Services нужен Firebase (Android)
        classpath("com.google.gms:google-services:4.4.2")

        // Плагин для распределенной сборки (если нужен)
        classpath("com.android.tools.build:gradle:8.3.2")
    }

    repositories {
        google()
        mavenCentral()
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// --- Перенос build/ в корень проекта (не обязательно, но можно)
val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()

rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

// --- Для Firebase требуется оценка app-модуля до остальных
subprojects {
    project.evaluationDependsOn(":app")
}

// Задача clean
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
