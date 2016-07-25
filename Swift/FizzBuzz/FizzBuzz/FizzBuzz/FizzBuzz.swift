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


class FizzBuzz {
    
    func play(number: Int) -> String {
        
        return number.isZero() ? number.toString() : fizzBizzResult(number)
    }
    
    private func fizzBizzResult(number: Int) -> String {
        
        if number.isDivisibeBy(15) {
            return "FizzBuzz"
        }
        
        if number.isDivisibeBy(3) {
            return "Fizz"
        }
        
        if number.isDivisibeBy(5) {
            return "Buzz"
        }
        
        return number.toString()
    }
}