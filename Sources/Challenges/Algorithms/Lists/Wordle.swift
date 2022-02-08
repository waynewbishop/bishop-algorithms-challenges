//
//  Wordle.swift
//  
//
//  Created by Wayne Bishop on 2/8/22.
//

import Foundation

//character representation
class Witem {
    
    var color: String?
    var value: String?
}


//guess the correct word - 6 attempts
class Wordle {

    var noAttempts: Int = 0
    var wordList = Set<String>()
    var history = [[Witem]]()
    var keyword: String?
    
    
    //initialize list
    init() {
        wordList.insert("flocks")
        wordList.insert("buyers")
        wordList.insert("items")
    }

    
    //obtain word from the list - randomized
    func start() {
        
        if let word = wordList.popFirst() {
            keyword = word
            wordList.insert(word) //should add word back to random position
        }
    }
    
    
    //word attempt - 6 attempts
    func attempt(with characters: String) -> Bool { //monitor some type of outcome
        
        let guess = Array(characters)
        
        guard guess.count > 5 else {
            return false
        }

        //convert to array sequence
        var sequence: Array<String?> = Array(arrayLiteral: keyword)
        
        //now that we have our word, we iterate through the model
        //for how many attempts we have left
        while noAttempts < 7  {
            
            //check each character
            for (index, value) in guess.enumerated() {
                if let keyindex = sequence.firstIndex(of: String(value)) {
                    if keyindex == index {
                        //the char exists in that position.. green
                    }
                    else {
                        //the char exists in another position.. brown
                    }
                }
                else {
                    //the char doesn't exist in the word.. grey
                }
            }
            
            //todo: add resulting custom object to history collection.
            noAttempts -= 1
        }
        
        return false
    }
    
    
}
