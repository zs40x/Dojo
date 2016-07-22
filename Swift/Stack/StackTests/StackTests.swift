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
    
    let intStack = Stack<Int>()
    let oneIntegerStack = Stack(initialElements: [1])
    let twoStringStack = Stack(initialElements: ["a","b"])
    
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
    
    func testTowStringStackReturnsStringAndThenNil() {
        XCTAssertEqual("b", twoStringStack.pop())
        XCTAssertEqual("a", twoStringStack.pop())
        XCTAssertNil(twoStringStack.pop())
    }
    
    
    func testPushedValueIsPopped() {
        intStack.push(1)
        
        XCTAssertEqual(1, intStack.pop())
    }
    
    func testPushWithContentProperty() {
        intStack.push(9)
        intStack.push(3)
        
        XCTAssertEqual([9, 3], intStack.content)
    }
    
    
    func testAcceptanceTest() {
        
        intStack.push(5)
        XCTAssertEqual(5, intStack.pop())
        XCTAssertNil(intStack.pop())
        
        intStack.push(7)
        intStack.push(9)
        intStack.push(1)
        XCTAssertEqual(1, intStack.pop())
        XCTAssertEqual(9, intStack.pop())
        XCTAssertEqual(7, intStack.pop())
        XCTAssertNil(intStack.pop())
    }
}
