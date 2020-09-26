//
//  CityList.swift
//  ApiGenerateExample
//
//

import SwiftUI
import UICore
import shared

struct CityList: View {
    var viewModel: CitiesViewModel
    
    var body: some View {
        let cities = viewModel.cities
        
        return VStack {
            List (cities) { city in
                    PushView(destination: CityDetail(city: city)) {
                        CityRow(city: city, viewModel: self.viewModel)
                    }
            }
        }
    }
}

struct CityRow: View {
    
    var city: City
    var viewModel: CitiesViewModel
    
    var body: some View {
        Text(city.title)
    }
}
