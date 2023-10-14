//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Sarika Lande on 24/04/23.
//

import Foundation

// MARK: - Weather
struct WeatherResponse: Codable {
    let main: Weather
    let name: String
}


// MARK: - Main
struct Weather: Codable {
    let temp: Double
}
