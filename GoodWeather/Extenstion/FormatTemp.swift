//
//  FormatTemp.swift
//  GoodWeather
//
//  Created by Sarika Lande on 24/04/23.
//

import Foundation

extension Double {
    
    func formatAsDegree() -> String {
        return String(format: "%.0f°",self)
    }
    
}
