//
//  CityDetail.swift
//  ApiGenerateExample
//

import SwiftUI
import UICore
import shared

struct CityDetail: View {
    @ObservedObject var viewModel = DetailViewModel()
    var city: City
    
    var body: some View {
        VStack {
            NavBar(label: "Cities", font: .body)
            VStack {
                Text(self.city.title)
                    .font(.largeTitle)
                if viewModel.isLoading && viewModel.weatherList.isEmpty {
                    Spacer()
                    FullScreenLoader()
                    Spacer()
                } else {
                    List(viewModel.weatherList) { weather in
                        WeatherRow(city: self.city, weather: weather)
                    }
                }
            }
        }
        .onAppear {
            self.viewModel.openDetail(city: self.city)
            self.viewModel.fetchWeatherList()
        }
        .onDisappear {
            self.viewModel.clear()
        }
    }
}

struct WeatherRow: View {
    var city: City
    var weather: Weather
    
    var body: some View {
        let dateValue = weather.applicableDate
        
        return PushView(destination: WeatherDetail(dateValue: dateValue, cityName: city.title, weather: weather)) {
            Text(dateValue)
            Spacer()
            Text(weather.weatherStateName)
        }
        .navigationBarTitle(self.city.title)
    }
}
