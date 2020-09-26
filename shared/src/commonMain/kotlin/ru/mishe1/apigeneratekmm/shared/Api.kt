import dev.icerock.moko.network.generated.apis.CitiesApi
import dev.icerock.moko.network.generated.apis.WeatherApi
import dev.icerock.moko.network.generated.models.City
import io.ktor.client.*
import io.ktor.client.features.json.*
import io.ktor.client.features.json.serializer.*
import io.ktor.client.request.*
import kotlinx.serialization.json.Json

class Api {
    private val json = Json {
        ignoreUnknownKeys = true
    }
    private val httpClient = HttpClient {
        install(JsonFeature){
            serializer = KotlinxSerializer(json)
        }
    }

    val cities = CitiesApi(httpClient = httpClient, json = json)
    val weather = WeatherApi(httpClient = httpClient, json = json)
}