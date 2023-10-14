//
//  AddViewModel.swift
//  GoodWeather
//
//  Created by Sarika Lande on 24/04/23.
//

import Foundation

class AddViewModel {
    
    func AddWeather(city: String, completion: @escaping (WheatherViewMode) -> Void ) {
        let weatherURL = Constant.Urls.urlForWeatherByCity(city: city)
        
        let weatherResource = Resource<WeatherResponse>(url: weatherURL) { data in
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            print(weatherResponse)
            return weatherResponse
        }
        
        Webservice().load(resource: weatherResource) { (result) in
            
            if let weatherResource = result {
                let vm = WheatherViewMode(weather: weatherResource)
                completion(vm)
            }
            else {
                print("nil")
            }
            
        }
    }
}
