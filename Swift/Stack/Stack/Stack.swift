//
//  Stack.swift
//  Stack
//
//  Created by Stefan Mehnert on 22/07/16.
//  Copyright © 2016 Stefan Mehnert. All rights reserved.
//

import Foundation

class Stack<T>
{
    private var stack = [T]()
    
    
    init() { }
    
    init(initialElements: [T]) {
        self.stack.appendContentsOf(initialElements)
    }
    
    
    func push(element: T) {
        
    }
    
    func pop() -> T? {
        
        return self.stack.last
    }
}