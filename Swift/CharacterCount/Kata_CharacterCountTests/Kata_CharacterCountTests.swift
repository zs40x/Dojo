//
//  Kata_CharacterCountTests.swift
//  Kata_CharacterCountTests
//
//  Created by Stefan Mehnert on 04/06/16.
//  Copyright © 2016 Stefan Mehnert. All rights reserved.
//

import XCTest
@testable import Kata_CharacterCount

class Kata_CharacterCountTests: XCTestCase {
    
    func runTest(_ string: String) -> [Character:Int] {
        return CharacterCounter(string: string).CharacterCountAsDictionary()
    }
    
    
    func testEmptyStringRetrunsEmptyDictionary() {
        
        XCTAssertNotNil(runTest(""))
        
        XCTAssertEqual(runTest("").count, 0)
    }
    
    func testSingleCharacter() {
        
        XCTAssertEqual(runTest("a"), ["a":1])
    }
    
    func test2IdenticalCharacters() {
        XCTAssertEqual(runTest("aa"), ["a":2])
    }
    
    func test2DifferentCharacters() {
        XCTAssertEqual(runTest("ab"), ["a":1, "b":1])
    }
    
    func test2Different2CharPairs() {
        XCTAssertEqual(runTest("abab"), ["a":2,"b":2])
    }
    
    func testASentence() {
        XCTAssertEqual(runTest("Das darf nicht sein"), ["d":2, "a":2, "s":2, " ":2, "r":1, "f":1, "n":2, "i":2, "c":1, "h":1, "e":1, "t":1])
    }
}
