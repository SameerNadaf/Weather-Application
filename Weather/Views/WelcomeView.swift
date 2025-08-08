//
//  WelcomeView.swift
//  Weather
//
//  Created by Sameer  on 08/08/25.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    
    @EnvironmentObject private var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                
                Image(systemName: "cloud.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .foregroundStyle(.white)
                    .shadow(color: Color.white.opacity(0.3), radius: 10, x: 10, y: 10)
                    .padding(.bottom, 20)
                
                Text("Welcome to the Weather App")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.primary)
                
                Text("Please share your current location to get the weather forecast in your area")
                    .padding()
            }
            .padding()
            .multilineTextAlignment(.center)
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .tint(Color.accentColor)
            .symbolVariant(.fill)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
