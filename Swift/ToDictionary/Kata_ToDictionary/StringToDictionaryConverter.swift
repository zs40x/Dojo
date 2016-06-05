//
//  StringToDictionaryConverter.swift
//  Kata_ToDictionary
//
//  Created by Stefan Mehnert on 04/06/16.
//  Copyright © 2016 Stefan Mehnert. All rights reserved.
//

import Foundation

struct KeyValuePair {
    var Key: String
    var Value: String
}

enum ToDictionaryErrors : ErrorType {
    case KeyIsInitial
}

public class StringToDictionaryConverter {
    private var input: String
    private var pairDictionary = [String:String]()
    
    
    init(input: String) {
        self.input = input
    }
    
    public func toDictionary() throws -> [String:String] {
        pairDictionary = [String:String]()
        
        for pairString in allPairStrings() {
            try tryToParsePair(pairString)
        }
        
        return pairDictionary
    }
    
    
    func tryToParsePair(pairString: String) throws {
        let result = toKeyAndValue(pairString)
        
        if(result.isSucessful) {
            try updateDictionary(result.value)
        }
    }
    
    func updateDictionary(parsedKeyAndValuePair: KeyValuePair!) throws {
        guard let keyAndValuePair = parsedKeyAndValuePair else {
            return
        }
        
        guard !keyAndValuePair.Key.isEmpty else {
            throw ToDictionaryErrors.KeyIsInitial   
        }
        
        pairDictionary.updateValue(keyAndValuePair.Value, forKey: keyAndValuePair.Key)
    }
    
    func allPairStrings() -> [String] {
        return input.componentsSeparatedByString(";")
    }
    
    func toKeyAndValue(pair: String) -> Result<KeyValuePair> {
        guard let firstEqualRange = pair.rangeOfString("=") else {
            return Result.Failure("invalid pair")
        }
        
        return Result.Success(
                KeyValuePair(
                        Key: pair.substringToIndex(firstEqualRange.startIndex),
                        Value: pair.substringFromIndex(firstEqualRange.endIndex)
                    )
                )
    }
}