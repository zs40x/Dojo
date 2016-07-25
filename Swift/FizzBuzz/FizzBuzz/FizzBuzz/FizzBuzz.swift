//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Stefan Mehnert on 25/07/16.
//  Copyright © 2016 Stefan Mehnert. All rights reserved.
//

import Foundation


extension Int {
    
    func isZero() -> Bool {
        return self == 0 ? true : false
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
    
    func play(number: Int) -> String {
        
        switch isDivisibleBy(number) {
        case .Fifteen:
            return "FizzBuzz"
        case .Three:
            return "Fizz"
        case .Five:
            return "Buzz"
        default:
            return number.toString()
        }
    }
    
    private func isDivisibleBy(number: Int) -> DivisibleBy {
    
        guard number != 0 else {
            return .None
        }
        
        let divisibleBy = (three: number.isDivisibeBy(3), five: number.isDivisibeBy(5))
        
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