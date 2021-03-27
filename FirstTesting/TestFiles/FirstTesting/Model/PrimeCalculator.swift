//
//  PrimeCalculator.swift
//  FirstTesting
//
//  Created by Jakub Gawecki on 27/03/2021.
//

import Foundation

struct PrimeCalculator {
    static func calculate(upTo max: Int, completion: @escaping([Int]) -> Void) {
        // that pushes our work straight to a background thread. Safety courtesy to avoid issues where range is huge like million or billion.
        DispatchQueue.global().async {
            guard max > 1 else {
                // if the input value is 0 or 1 exit immediately
                return
            }
            
            // mark all out number as prime
            var sieve = [Bool](repeating: true, count: max)
            
            // 0 and 1 are by definition not a prime
            sieve[0] = false
            sieve[1] = false
            
            // count from 0 up to the ceiling...
            for number in 2 ..< max {
                // if this is marked as prime, then every multiple of it is not prime
                if sieve[number] == true {
                    for multiple in stride(from: number * number, to: sieve.count, by: number) {
                        sieve[multiple] = false
                    }
                }
            }
            
            // collapse our results down to a single array of primes
            let primes = sieve.enumerated().compactMap { $1 == true ? $0 : nil }
            completion(primes)
        }
    }
}
