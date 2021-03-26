//
//  Hater.swift
//  FirstTesting
//
//  Created by Jakub Gawecki on 26/03/2021.
//

struct Hater {
    var hating = false
    
    mutating func hadABadDay() {
        hating = true
    }
    
    mutating func hadAGoodDay() {
        hating = false
    }
}
