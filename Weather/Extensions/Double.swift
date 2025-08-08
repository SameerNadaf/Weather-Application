//
//  Double.swift
//  Weather
//
//  Created by Sameer  on 08/08/25.
//

import Foundation
import SwiftUI

// Extension for rounded Double to 0 decimals
extension Double {
    func roundDouble() -> String {
        return String(format: "%.0f", self)
    }
}
