//
//  ThrowingTests.swift
//  FirstTestingTests
//
//  Created by Jakub Gawecki on 27/03/2021.
//

import XCTest
@testable import FirstTesting

/// That part of testing uses throwing functions. XCTFail does not evaluate anything. If that code is run the test is immediately considered a failure.
class ThrowingTests: XCTestCase {
    
    
    /// This test passes only when function game.play throws an error and it does because method .play() will throw an error but not presice one. It may throw one of three errors. We want it to be specific. Next function will demonstrate
    func testPlayingBioBlitzThrows() {
        // Arrange
        let game = Game(name: "BioBlitz")
        
        
        // Act
        do {
            try game.play()
            XCTFail("BioBlitz has not been purchased.")
        } catch { }
    }
    
    
    /// That test will check on speicfied error that we want to get.
    func testPlayingBiotBlitzThrowsRespectebly() {
        // Arrange
        let game = Game(name: "BioBlitz")
        
        
        // Act
        do {
            try game.play()
            // If method throws any error out of 3 possible, that test will pass
            XCTFail()
        } catch GameError.notPurchased {
            // success!
        } catch {
            // If method throws an error that is not one that we expected (.notPurchased), test will not pass
            XCTFail()
        }
    }
    
    
    /// The other technique using XCTAssertThrowsError. However, this is a similar problem to the one we had before. We are not testing the type of error thrown.
    func testPlayingBlastazapThrows() {
        // Arrange
        let game = Game(name: "Blastazap")
        
        
        // Assert
        XCTAssertThrowsError(try game.play())
    }
    
    
    /// That test will check on specified error that we want to get
    func testPlayingBastazapThrowsRespectebly() {
        // Arrange
        let game = Game(name: "Blastazap")
        
        
        // Assert
        XCTAssertThrowsError(try game.play()) { error in
            // With a trailing closure that will speicfy how to handle any thrown errors, we specify which error we do expect
            XCTAssertEqual(error as? GameError, GameError.notInstalled)
        }
    }
    
    
    /// That function will pass only if no error was thrown
    func testPlayingExplodingMonkeysDoesntThrow() {
        // Arrange
        let game = Game(name: "Exploding Monkeys")
        
        
        // Assert
        XCTAssertNoThrow(try game.play())
    }
 
    
    /// That test will always throw an error as it fails when error exists. As we know, method play will throw an error where "Dead Storm Rising" String is assigned to name parameter. That error does not help when read from the console. We can modify it by adding an extension to LocalizedError. Extension find in FolderGroup Extension. Now when test run, description of the test will appear in a console.
    func testDeadStormRisingThrows() throws {
        // Arrange
        let game = Game(name: "Dead Storm Rising")
        
        
        // Act
        try game.play()
    }
    
    
    func testCrashyPlaneDoesntThrow() throws {
        // Arrange
        let game = Game(name: "CrashyPlane")
        
        
        // Act
        try game.play()
    }
}
