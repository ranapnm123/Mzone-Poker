//
//  mZone_PokerUITests.swift
//  mZone PokerUITests
//
//  Created by Ravindra on 19/07/16.
//  Copyright © 2016 Philip Yu. All rights reserved.
//
import Foundation
import XCTest
class mZone_PokerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
//        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
//        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    
    func testExample() {
              
        XCUIDevice().orientation = UIDeviceOrientation.LandscapeLeft
        snapshot("1LandscapeLeft")
        
        XCUIDevice().orientation = UIDeviceOrientation.LandscapeRight
        snapshot("2LandscapeRight")
        
        XCUIDevice().orientation = UIDeviceOrientation.Portrait
        snapshot("3Portrait")
        
    }
    
}
