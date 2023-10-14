//
//  Constant.swift
//  GoodWeather
//
//  Created by Sarika Lande on 24/04/23.
//

import Foundation


struct Constant {
    
    struct Urls {
        
        static func urlForWeatherByCity(city: String) -> URL {
            
            // get the default settings for temperature
            let userDefaults = UserDefaults.standard
            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=d05b3e6c4549e172e4908b26a386f8b0&units=\(unit)")!
        }
        
    }
}
