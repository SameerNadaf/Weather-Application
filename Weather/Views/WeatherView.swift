//
//  WeatherView.swift
//  Weather
//
//  Created by Sameer  on 08/08/25.
//

import SwiftUI

struct WeatherView: View {
    
    let weather: ResponseBody
    
    var body: some View {
        ZStack {
            VStack {
                cityName
                Spacer()
                
                VStack {
                    temperatureRow
                    Spacer()
                        .frame(height: 80)
                    cityImage
                    Spacer()
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack {
                Spacer()
                weatherDetailsCard
            }
        }
        .ignoresSafeArea(edges: .bottom)
        .background(Color("backgroundColor"))
        .preferredColorScheme(.dark)
        
    }
}

extension WeatherView {
    
    private var cityName: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(weather.name)
                .font(.title)
                .fontWeight(.bold)
            
            Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                .fontWeight(.light)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var temperatureRow: some View {
        HStack {
            VStack(spacing: 20) {
                Image(systemName: "sun.max")
                    .font(.system(size: 40))
                
                Text(weather.weather[0].main)
                    
            }
            .frame(width: 150, alignment: .leading)
            
            Spacer()
            
            Text(weather.main.feelsLike.roundDouble() + "°")
                .font(.system(size: 100))
                .bold()
                .padding()
        }
    }
    
    private var cityImage: some View {
        AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2020/01/24/21/33/city-4791269_960_720.png")) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350)
        } placeholder: {
            ProgressView()
        }
    }
    
    private var thermeterRow: some View {
        HStack {
            WeatherRow(logo: "thermometer", name: "Min temp", value: (weather.main.tempMin.roundDouble() + ("°")))
            Spacer()
            WeatherRow(logo: "thermometer", name: "Max temp", value: (weather.main.tempMax.roundDouble() + "°"))
        }
    }
    
    private var windRow: some View {
        HStack {
            WeatherRow(logo: "wind", name: "Wind speed", value: (weather.wind.speed.roundDouble() + " m/s"))
            Spacer()
            WeatherRow(logo: "humidity", name: "Humidity", value: "\(weather.main.humidity.roundDouble())%")
        }
    }
    
    private var weatherDetailsCard: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Weather now")
                .bold()
                .padding(.bottom)
            
            thermeterRow
            windRow
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .padding(.bottom, 20)
        .foregroundColor(Color("backgroundColor"))
        .background(.white)
        .cornerRadius(20, corners: [.topLeft, .topRight])
    }
}

#Preview {
    WeatherView(weather: previewWeather)
}
