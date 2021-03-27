//
//  PerformanceTests.swift
//  PerformanceTests
//
//  Created by Jakub Gawecki on 27/03/2021.
//

import XCTest
@testable import FirstTesting

class PerformanceTests: XCTestCase {

    
    /// That test will measure performace time of a function PrimeCalculatorPer.calculate(...) However, we did not set a baseline, meaning Xcode has nothing to compare it again to say wether its faster or slower then expected.
    func testPrimePerformance() {
        measure {
            _ = PrimeCalculatorPer.calculate(upTo: 1_000_000)
        }
    }
    
    
    func testPrimePerformanceWithBaselineSet() {
        measure {
            _ = PrimeCalculatorPer.calculate(upTo: 1_000_000)
        }
    }
}
