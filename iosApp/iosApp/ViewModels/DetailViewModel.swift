//
//  DetailViewModel.swift
//  ApiGenerateExample
//
//

import Foundation
import Combine
import shared

final class DetailViewModel: ObservableObject {
    @Published var isLoading = false
    @Published var city: City? = nil
    @Published var weatherList: [Weather] = []
    
    init() { }
    
    func openDetail(city: City) -> Void {
        self.city = city
    }
    
    func clear() -> Void {
        city = nil
        weatherList = []
    }
    
    func fetchWeatherList() -> Void {
        if isLoading {
            return
        }
        isLoading = true

        Api().weather.getWeatherListByCity(id: String(city?.id ?? 0)) {
            (detailRs: CityDetailRs?, error: Error?) in
            if let weatherList = detailRs?.consolidatedWeather {
                self.weatherList = weatherList
            }
            self.isLoading = false
        }
    }
}
