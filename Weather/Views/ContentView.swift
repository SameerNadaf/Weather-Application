//
//  ContentView.swift
//  Weather
//
//  Created by Sameer  on 08/08/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var locationManager = LocationManager()
    private var weatherManager = WeatherManager()
    @State private var weather: ResponseBody?
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                if let weather = weather {
                    WeatherView(weather: weather)
                } else {
                    LoadingView()
                        .task {
                            do {
                                weather = try await weatherManager.fetchWeather(latitude: location.latitude, longitude: location.longitude)
                            } catch {
                                print("Error fetching weather: \(error.localizedDescription)")
                            }
                        }
                }
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }
        .background(Color("backgroundColor"))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
