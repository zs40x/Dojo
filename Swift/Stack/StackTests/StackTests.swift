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
        let intStack = Stack<Int>()
        
        intStack.push(1)
        
        XCTAssertEqual(1, intStack.pop())
    }
    
    
    func testAcceptanceTest() {
        let stack = Stack<Int>()
        
        stack.push(5)
        XCTAssertEqual(5, stack.pop())
        XCTAssertNil(stack.pop())
        
        stack.push(7)
        stack.push(9)
        stack.push(1)
        XCTAssertEqual(1, stack.pop())
        XCTAssertEqual(9, stack.pop())
        XCTAssertEqual(7, stack.pop())
        XCTAssertNil(stack.pop())
    }
}
