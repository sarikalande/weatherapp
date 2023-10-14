//
//  StringEscaped.swift
//  GoodWeather
//
//  Created by Sarika Lande on 24/04/23.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
}
