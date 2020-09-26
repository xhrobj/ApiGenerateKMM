import java.net.URI

buildscript {
    repositories {
        gradlePluginPortal()
        jcenter()
        google()
        mavenCentral()
    }

    val kotlinVersion = "1.4.10"

    dependencies {
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlinVersion")
        classpath("org.jetbrains.kotlin:kotlin-serialization:$kotlinVersion")
        classpath("com.android.tools.build:gradle:4.1.0-rc02")
    }
}

group = "ru.mishe1.apigeneratekmm"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}
