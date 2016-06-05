//
//  Kata_ToDictionaryTests.swift
//  Kata_ToDictionaryTests
//
//  Created by Stefan Mehnert on 04/06/16.
//  Copyright © 2016 Stefan Mehnert. All rights reserved.
//

import XCTest
@testable import Kata_ToDictionary

class Kata_ToDictionaryTests: XCTestCase {
    
    func runTest(input: String) throws -> [String:String] {
        var result: [String:String]
        let testInstance = StringToDictionaryConverter(input: input)
        
        result = try testInstance.toDictionary()
        return result
    }
    
    
    func testEmptyInputReturnsEmptyDictionary() {
        XCTAssertNotNil(try runTest(""))
        
        XCTAssertEqual(try runTest(""), [String:String]())
    }
    
    func testReturnsSinglePair() {
        XCTAssertEqual(try runTest("a=1"), ["a":"1"])
    }
    
    func testReturnsToDelimitterSeperatedPairs() {
        XCTAssertEqual(try runTest("a=1;b=2"), ["a":"1","b":"2"])
    }
    
    func testIgnoresEmptyPairsBetweenDelimitters() {
        XCTAssertEqual(try runTest("a=1;;b=2"), ["a":"1","b":"2"])
    }
    
    func testPairWithEqualInValue() {
        XCTAssertEqual(try runTest("a==1;b==x"), ["a":"=1","b":"=x"])
    }
    
    func testIncompletePairThrowsKeyIsInitial() {
        XCTAssertThrowsError(try runTest("=1"))
    }
}
