//
//  WheatherListViewMode.swift
//  GoodWeather
//
//  Created by Sarika Lande on 24/04/23.
//

import Foundation

class WheatherListViewMode {
    private var weatherViewModes = [WheatherViewMode]()
    
    func AddWeatherVieModel(_ vm: WheatherViewMode) {
        weatherViewModes.append(vm)
    }
    
    func numberOfRows(_ section: Int) -> Int {
        return weatherViewModes.count
    }
    
    func ModelAt(_ index: Int) -> WheatherViewMode {
        return weatherViewModes[index]
    }
}

class WheatherViewMode {
    let weather: WeatherResponse
    var temp : Double
    
    init(weather: WeatherResponse) {
        self.weather = weather
        temp = weather.main.temp
    }
    
    var city: String {
        return weather.name
    }
}
