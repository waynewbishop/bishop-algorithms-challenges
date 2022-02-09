//
//  Wordle.swift
//  
//
//  Created by Wayne Bishop on 2/8/22.
//

import Foundation


class Wordle {

    var noAttempts: Int = 0
    var wordList = Set<String>()
    var history = Array<String>()
    var keyword: String = ""
    var usedCharacters = Set<Character>()

    //initialize list
    init() {
        wordList.insert("flocks")
        wordList.insert("buyers")
        wordList.insert("items")
        wordList.insert("apple")
        wordList.insert("basis")
        wordList.insert("since")
        wordList.insert("after")
    }

    
    func start() {
        
        if let word = wordList.popFirst() {
            keyword = word
            wordList.insert(word) //random position
        }
    }
    
    
    //word attempt - 6 attempts
    func attempt(_  characters: String) -> Bool {
        
        let guess = Array(characters)
        
        guard guess.count == 5 else {
            return false
        }
        
        
        //attempt and compare
        if noAttempts < 7  {
            
            //check each character
            for (index, s) in guess.enumerated() {
                
                usedCharacters.insert(s)
                
                if let keyindex = keyword.firstIndex(of: s) {
                    let i: Int = keyword.distance(from: keyword.startIndex, to: keyindex)
                    
                    if i == index {
                        //the char exists in that position.. green
                        print("\(s) is green..")
                        
                        //todo: add functioanlity for winning the game
                        //use set object so as to not double count
                        //characters. 
                        
                    }
                    else {
                        //the char exists in another position.. brown
                        print("\(s) is brown..")
                    }
                }
                else {
                    //the char doesn't exist in the word.. grey
                    print("\(s) is grey..")
                }
            }
            
            //add to guess history..
            history.append(String(guess))
            
            print("\n Attempts: \(history)") //print history list..
            
            
            noAttempts += 1

        }
        
        else {
            print("all done. correct word was \(keyword)!")
        }
        
        return false
    }
    
    
}
