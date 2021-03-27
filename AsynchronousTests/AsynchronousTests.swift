//
//  AsynchronousTests.swift
//  AsynchronousTests
//
//  Created by Jakub Gawecki on 27/03/2021.
//

import XCTest
@testable import FirstTesting

class AsynchronousTests: XCTestCase {

    
    /// That test will pass but its incorrect. Of coures there are prime numbers in 0 to 100. Many of them in fact. The tast pass because XCTTest is not aware that the completion block matters. To fix this, we need to tell XCTest to wait until our asynchronous code completes using a system of expectations. Next example will show
    func testPrimesUpTo100ShouldBe0() {
        // Arrange
        let maximumCount = 100
        
        
        // Act
        PrimeCalculator.calculate(upTo: maximumCount) {
            
            // Assert
            XCTAssertEqual($0.count, 0)
        }
    }
    
    
    /// In this function, we used XCTExpectation. We do everything as normal but...
    func testPrimesUpTo100ShouldBe25() {
        // Arrange
        let maximumCount = 100
        // 1. we create an instance of XCTestExpectation with some description
        let expectation = XCTestExpectation(description: "Calculate primes up to \(maximumCount)")
        
        // Act
        PrimeCalculator.calculate(upTo: maximumCount) {
            
            
            // Assert
            // 3. We execute that code, one by one, XCTAssertEqual is done, expectation.fulfill is done after
            XCTAssertEqual($0.count, 25)
            expectation.fulfill()
        }
        
        // 2. We tell afterwards to our test that it should wait up to 10 or when expectation is fulfilled
        wait(for: [expectation], timeout: 10)
    }
}
