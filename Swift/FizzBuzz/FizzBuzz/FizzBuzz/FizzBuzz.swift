//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Stefan Mehnert on 25/07/16.
//  Copyright © 2016 Stefan Mehnert. All rights reserved.
//

import Foundation


extension Int {
    
    func isNotZero() -> Bool {
        return self != 0 ? true : false
    }
    
    func toString() -> String {
        return String(self)
    }
    
    func isDivisibeBy(divisor: Int) -> Bool {
        return self % divisor == 0 ? true : false
    }
}

enum DivisibleBy {
    case Fifteen
    case Three
    case Five
    case None
}

class FizzBuzz {
    
    func playRound(number: Int) -> String {
        
        switch divisibleBy(number) {
        case .Three:
            return "Fizz"
        case .Five:
            return "Buzz"
        case .Fifteen:
            return "FizzBuzz"
        default:
            return number.toString()
        }
    }
    
    private func divisibleBy(number: Int) -> DivisibleBy {
    
        guard number.isNotZero() else { return .None }
        
        let divisibleBy =
            (three: number.isDivisibeBy(3), five: number.isDivisibeBy(5))
        
        switch divisibleBy {
        case (three: true, five: true):
            return .Fifteen
        case (three: true, five: false):
            return .Three
        case (three: false, five: true):
            return .Five
        default:
            return .None
        }
    }
}