//
//  ContentView.swift
//  ApiGenerateExample
//
//

import SwiftUI
import Combine
import UICore

struct ContentView: View {
    
    @ObservedObject var americanViewModel = AmericanCitiesViewModel()
    @ObservedObject var europeanViewModel = EuropeanCitiesViewModel()
    @ObservedObject var router = Router()
    
    var body: some View {
        let viewModel: CitiesViewModel = router.selectedSegment == .america ? americanViewModel : europeanViewModel
        
        return VStack {
            if viewModel.isLoading && viewModel.cities.isEmpty {
                FullScreenLoader()
            } else {
                WeatherContainer(viewModel: viewModel, router: router)
            }
        }
        .onAppear {
            self.americanViewModel.fetch()
            self.europeanViewModel.fetch()
        }
    }
}

struct WeatherContainer: View {
    var viewModel: CitiesViewModel
    @State var router: Router
    
    var body: some View {
        NavigationStackView {
            VStack {
                Text("Cities")
                    .font(.largeTitle)
                    .padding()
                Picker("Options", selection: $router.selectedSegment) {
                    Text("America").tag(SegmentTag.america)
                    Text("Europe").tag(SegmentTag.europe)
                }
                .pickerStyle(SegmentedPickerStyle())
                CityList(viewModel: viewModel)
                    .navigationBarTitle(Text("Cities"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
