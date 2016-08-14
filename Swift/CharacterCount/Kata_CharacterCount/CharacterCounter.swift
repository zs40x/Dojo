//
//  CharacterCounter.swift
//  Kata_CharacterCount
//
//  Created by Stefan Mehnert on 04/06/16.
//  Copyright © 2016 Stefan Mehnert. All rights reserved.
//

import Foundation

public class CharacterCounter {
    
    var string: String
    var dictionaryWithCharacterCount = [Character:Int]()
    
    
    init(string: String) {
        self.string = string
    }
    
    public func CharacterCountAsDictionary() -> [Character:Int] {
        dictionaryWithCharacterCount = [Character:Int]()
        
        for character in getLowercaseCharacters() {
            countCharacter(character)
        }
        
        return dictionaryWithCharacterCount
    }
    
    
    func getLowercaseCharacters() -> String.CharacterView {
        return string.lowercased().characters
    }
    
    func countCharacter(_ character: Character) {
        updateCharacterCount(character, count: getCountForCharacter(character))
    }
    
    func updateCharacterCount(_ character: Character, count: Int) {
        dictionaryWithCharacterCount.updateValue(count, forKey: character)
    }
    
    func getCountForCharacter(_ character: Character) -> Int {
        var characterCount = 1
        
        if dictionaryWithCharacterCount.keys.contains(character) {
            characterCount = characterCount + 1
        }
        
        return characterCount
    }
}
