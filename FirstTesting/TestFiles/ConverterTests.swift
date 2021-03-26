//
//  ConverterTests.swift
//  FirstTestingTests
//
//  Created by Jakub Gawecki on 26/03/2021.
//

import XCTest
@testable import FirstTesting


class ConverterTests: XCTestCase {
    var sut: Converter!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        sut = Converter()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func test212FahrenheitIs100Celsius() {
        // Arrange
        sut         = Converter()
        let input2  = 212.0
        
        
        // Act
        let output2 = sut.convertToCelsius(fahrenheit: input2)
        
        
        // Assert
        XCTAssertEqual(output2, 100)
    }
    
    
    func test32FahrenheitIsZeroCelsius() {
        // Arrange
        sut         = Converter()
        let input1  = 32.0
        
        
        // Act
        let output1 = sut.convertToCelsius(fahrenheit: input1)
        
        
        // Assert
        XCTAssertEqual(output1, 0)
    }

}
