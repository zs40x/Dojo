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
    
    func testEmptyStackPopReturnsNil() {
        XCTAssertNil(Stack().pop())
    }
    
    func testPopRetunsAnItem() {
        
        let stack = Stack(initialElements: [1])
        
        XCTAssertEqual(1, stack.pop())
    }
}
