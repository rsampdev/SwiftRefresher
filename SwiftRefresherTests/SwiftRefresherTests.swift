//
//  SwiftRefresherTests.swift
//  SwiftRefresherTests
//
//  Created by Rodney Sampson on 9/20/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import XCTest
import SwiftRefresher

class SwiftRefresherTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testProductsDiff() {
        let array = [10, 4, 1, 6, 2]
        let result = productsDiff(array)
        let expected = [48,120,480,80,240]
        XCTAssertEqual(result, expected)
    }
    
    func testDedupeSortedArray() {
        let array = [1,  4,  21, 21, 50, 50, 50, 50, 100, 101]
        let result = dedupeSortedArray(array)
        let expected  = ([1,  4,  21, 50, 100, 101], 6)
        XCTAssertEqual(result.0, expected.0)
        XCTAssertEqual(result.1, expected.1)
    }

    
}
