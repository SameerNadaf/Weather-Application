//
//  WeatherManager.swift
//  Weather
//
//  Created by Sameer  on 08/08/25.
//

import Foundation
import CoreLocation

class WeatherManager {
    func fetchWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> ResponseBody {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\("Add your token here..")&units=metric") else {
            fatalError("Missing URL")
        }
        
        let (data, response) = try await URLSession.shared.data(from: url, delegate: nil)
        guard
            let response = response as? HTTPURLResponse,
            response.statusCode >= 200 && response.statusCode < 300 else {
            fatalError("Error fetching weather data")
        }
        
        let decodedData = try JSONDecoder().decode(ResponseBody.self, from: data)
        return decodedData
    }
}
