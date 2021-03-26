//
//  Converter.swift
//  FirstTesting
//
//  Created by Jakub Gawecki on 26/03/2021.
//

import Foundation

struct Converter {
    func convertToCelsius(fahrenheit: Double) -> Double {
        return (fahrenheit - 32) * 5 / 9
    }
}
