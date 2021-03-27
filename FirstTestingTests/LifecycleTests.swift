//
//  LifecycleTests.swift
//  FirstTestingTests
//
//  Created by Jakub Gawecki on 26/03/2021.
//

import XCTest

class LifecycleTests: XCTestCase {

    
    // 1 called first
    override class func setUp() {
        print("In class setUp.")
    }
    
    // 9 called ninth
    override class func tearDown() {
        print("In class tearDown.")
    }
    
    
    // 2 called second
    override func setUp() {
        print("In setUp.")
    }
    
    
    // 8 called eighth
    override func tearDown() {
        print("In tearDown.")
    }
    
    func testExample() {
        
        
        // 3 called third
        print("Starting test.")
        
        
        // 7 called seventh
        addTeardownBlock {
            print("In first tearDown block.")
        }
        
        
        // 4 called fourth
        print("In middle of test.")
        
        
        // 6 called sixth
        addTeardownBlock {
            print("In second tearDown block.")
        }
        
        
        // 5 called fifth
        print("Finishing test.")
    }

}

/*  Teardown block is a very useful block to clean up some potential pollute that may cause failure or distraction of further testing methods.
    
*/
