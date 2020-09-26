/**
* Swagger ApiGenerateExample
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* OpenAPI spec version: 1.0.0
* Contact: apiteam@swagger.io
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/
package dev.icerock.moko.network.generated.models

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

/**
 * 
 * @param id 
 * @param weatherStateName 
 * @param weatherStateAbbr 
 * @param windDirectionCompass 
 * @param applicableDate 
 * @param minTemp 
 * @param maxTemp 
 * @param theTemp 
 * @param windSpeed 
 * @param windDirection 
 * @param airPressure 
 * @param humidity 
 * @param visibility 
 * @param predictability 
 */
@Serializable
data class Weather (
    @SerialName("id")
    val id: kotlin.Long,
    @SerialName("weather_state_name")
    val weatherStateName: kotlin.String,
    @SerialName("weather_state_abbr")
    val weatherStateAbbr: kotlin.String,
    @SerialName("wind_direction_compass")
    val windDirectionCompass: kotlin.String,
    @SerialName("applicable_date")
    val applicableDate: kotlin.String,
    @SerialName("min_temp")
    val minTemp: kotlin.Double,
    @SerialName("max_temp")
    val maxTemp: kotlin.Double,
    @SerialName("the_temp")
    val theTemp: kotlin.Double,
    @SerialName("wind_speed")
    val windSpeed: kotlin.Double,
    @SerialName("wind_direction")
    val windDirection: kotlin.Double,
    @SerialName("air_pressure")
    val airPressure: kotlin.Double,
    @SerialName("humidity")
    val humidity: kotlin.Int,
    @SerialName("visibility")
    val visibility: kotlin.Double,
    @SerialName("predictability")
    val predictability: kotlin.Int
) {

}

