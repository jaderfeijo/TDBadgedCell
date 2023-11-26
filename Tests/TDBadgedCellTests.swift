//
//  TDBadgedCellTests.swift
//  TDBadgedCellTests
//
//  Created by Tim Davies on 04/02/2017.
//  Copyright © 2017 Tim Davies. All rights reserved.
//

import XCTest
@testable import TDBadgedCell

class TDBadgedCellTests: XCTestCase {
    
    var cell: TDBadgedCell?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        cell = TDBadgedCell(style: .default, reuseIdentifier: "Cell")
    }
    
    func testSetBadgeString() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        cell?.badgeString = "Testing 1,2,3"
        XCTAssert((cell?.badgeString == "Testing 1,2,3"))
    }
    
    func testBadgeDraws() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        cell?.badgeString = "Testing 1,2,3"
        XCTAssert(cell?.badgeImageView != nil)
        XCTAssert(cell!.badgeImageView.image != nil)
    }
}
