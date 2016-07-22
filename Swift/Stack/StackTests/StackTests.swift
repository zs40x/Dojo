//
//  StackTests.swift
//  StackTests
//
//  Created by Stefan Mehnert on 22/07/16.
//  Copyright © 2016 Stefan Mehnert. All rights reserved.
//

import XCTest
@testable import Stack

class StackTests: XCTestCase {
    
    let oneIntegerStack = Stack(initialElements: [1])
    
    func testEmptyStackPopReturnsNil() {
        XCTAssertNil(Stack().pop())
    }
    
    func testPopRetunsAnItem() {
        XCTAssertEqual(1, oneIntegerStack.pop())
    }
    
    func testPopReturnsSingleItemOnlyOnce() {
        XCTAssertEqual(1, oneIntegerStack.pop())
        XCTAssertNil(oneIntegerStack.pop())
    }
}
