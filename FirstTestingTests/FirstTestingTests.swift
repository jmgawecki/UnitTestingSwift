//
//  FirstTestingTests.swift
//  FirstTestingTests
//
//  Created by Jakub Gawecki on 26/03/2021.
//

import XCTest
@testable import FirstTesting

class FirstTestingTests: XCTestCase {
    var hater: Hater!

    override func setUpWithError() throws {
        super.setUp()
        hater = Hater()
    }

    override func tearDownWithError() throws {
        hater = nil
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
    
    func testHaterStartsNicely() {
        //Arrange
        hater = Hater()
        
        
        //Act
        
        
        //Assert
        XCTAssertFalse(hater.hating)
    }
    
    func testHaterHatesAfterBadDay() {
        //Arrange
        hater = Hater()
        
        
        //Act
        hater.hadABadDay()
        
        
        //Assert
        XCTAssertTrue(hater.hating)
    }
    
    func testHaterHappyAfterGoodDay() {
        //Arrange
        hater = Hater()
        
        
        //Act
        hater.hadAGoodDay()
        
        
        //Assert
        XCTAssertFalse(hater.hating)
    }

}
