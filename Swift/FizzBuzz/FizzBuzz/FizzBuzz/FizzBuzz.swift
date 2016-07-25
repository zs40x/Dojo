//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Stefan Mehnert on 25/07/16.
//  Copyright © 2016 Stefan Mehnert. All rights reserved.
//

import Foundation


extension Int {
    func isDivisibeBy(divisor: Int) -> Bool {
        return self % divisor == 0 ? true : false
    }
}


class FizzBuzz {
    
    func play(number: Int) -> String {
        
        if number == 0 {
            return String(0)
        }
        
        if number.isDivisibeBy(3) {
            return "Fizz"
        }
        
        return String(number)
    }
}