//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Stefan Mehnert on 25/07/16.
//  Copyright © 2016 Stefan Mehnert. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {
    
    func runTest(number: Int) -> String {
        return FizzBuzz().play(number)
    }
    
    
    func test0ReturnsZeroAsString() {
        XCTAssertEqual("0", runTest(0))
    }
    
    func testDivisibleBy3ReturnsFizz() {
        XCTAssertEqual("Fizz", runTest(3))
    }
}
