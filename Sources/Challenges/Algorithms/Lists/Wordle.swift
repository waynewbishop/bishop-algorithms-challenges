//
//  Wordle.swift
//  
//
//  Created by Wayne Bishop on 2/8/22.
//

import Foundation

extension String {
    
    func firstPosition(of item: Character) -> Int? {
        if let keyIndex = self.firstIndex(of: item) {
            return self.distance(from: self.startIndex, to: keyIndex)
        }
        return nil
    }
}


enum wResponse {
    case win, lose, length, active
}

class Wordle {
    
    var noAttempts: Int = 0
    var wordList = Set<String>()
    var history = Array<String>()
    var keyword: String = ""
    var lettersUsed = Set<Character>()
    
    /*
     note: use this boolean model to avoid false positives
     characters must match value and position. This object could also
     hold a complex type to indicate the status (color) of each position
     */
    
    var correct = Array<Bool>(repeatElement(false, count: 5))
    
    
    //initialize list
    init() {
        wordList.insert("flock")
        wordList.insert("buyer")
        wordList.insert("items")
        wordList.insert("apple")
        wordList.insert("basis")
        wordList.insert("since")
        wordList.insert("after")
        wordList.insert("alone")
        wordList.insert("jumps")
        wordList.insert("looks")
        wordList.insert("freak")
        wordList.insert("swift")
        wordList.insert("break")
        wordList.insert("glass")
    }

    
    func start() {
        
        if let word = wordList.popFirst() {
            keyword = word
            wordList.insert(word) //random position
        }
    }
    
    
    //word attempt - 6 attempts
    func attempt(_  guess: String) -> String {

        //test input
        guard guess.count == keyword.count else {
            return "invalid guess word - 5 characters"
        }
        
        
        //attempt and compare
        if noAttempts < 6  {
            
            //check each character
            for (index, s) in guess.enumerated() {
                
                lettersUsed.insert(s)
                                
                if let keyindex = keyword.firstIndex(of: s) {
                    let i: Int = keyword.distance(from: keyword.startIndex, to: keyindex)
                    
                    if i == index {
                        
                        //the char exists in that position.. green
                        print("\(s) is green..")
                        
                        //mark correct position
                        correct[index] = true
                        
                        let shortlist = correct.filter({ item in
                            item == true
                        })
                        
                        if shortlist.count == keyword.count {
                            return "congrats - you win!"
                        }
                        
                    }
                    else {
                        //the char exists in another position.. orange
                        print("\(s) is orange..")
                    }
                }
                
                else {
                    //the char doesn't exist in the word.. grey
                    print("\(s) is grey..")
                }
            }
            
            //maintain history..
            history.append(String(guess))
            
            print("\n Attempts: \(history)")
            print("Letters Used: \(lettersUsed)")
            
            noAttempts += 1
        }
        
        else {
            return "all done. correct word was \(keyword)!"
        }
        
        return "\(6 - noAttempts): attempts remaining. keep guessing!"
        
    }
    
    
}
