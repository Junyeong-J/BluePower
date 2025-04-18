//
//  BluePowerUITests.swift
//  BluePowerUITests
//
//  Created by 전준영 on 4/15/25.
//

import XCTest

@MainActor
final class BluePowerUITests: XCTestCase {

    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    func testMainViewButtonsExist() throws {
        let nearbyButton = app.buttons["nearbySearchButton"]
        let connectedButton = app.buttons["연결된 기기 보기"]
        
        XCTAssertTrue(nearbyButton.exists)
        XCTAssertTrue(connectedButton.exists)
    }
    
    func testTapNearbyButtonNavigates() throws {
        let nearbyButton = app.buttons["nearbySearchButton"]
        XCTAssertTrue(nearbyButton.exists)
        nearbyButton.tap()
        
        let searchingText = app.staticTexts["검색 중..."]
        XCTAssertTrue(searchingText.waitForExistence(timeout: 2.0))
    }
    
}
