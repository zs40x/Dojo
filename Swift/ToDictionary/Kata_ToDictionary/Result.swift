//
//  Result.swift
//  Kata_ToDictionary
//
//  Created by Stefan Mehnert on 04/06/16.
//  Copyright © 2016 Stefan Mehnert. All rights reserved.
//

import Foundation

public class Result<T> {
    
    var isSucessful: Bool
    var errorMessage: String
    var value: T?
    
   
    
    private init(isSucessful: Bool, errorMessage: String = "", value: T? = nil) {
        self.isSucessful = isSucessful
        self.errorMessage = errorMessage
        self.value = value
    }
    
    
    public static func Success(value: T?) -> Result {
        return Result(isSucessful: true, value: value)
    }
    
    public static func Failure(errorMessage: String) -> Result {
        return Result(isSucessful: false, errorMessage: errorMessage)
    }
    
}
