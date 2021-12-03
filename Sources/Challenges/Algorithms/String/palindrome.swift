//
//  Palindrome.swift
//  Challenges
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation


extension String {
    
    ///  Determines if a specified `String` qualifies as a palindrome. In other words,
    /// - Returns: Boolean flag, indicating the determined result
    
    public func isPalidrome() -> Bool  {
        
        var pstatus: Bool = false
                
        //convert to array
        let characters = Array(self)  //todo: is this required? Just do this on self.
            
        var findex: Int = characters.startIndex
        var bindex: Int = characters.endIndex - 1
        
        //compare the forward and backward indices
        while findex < bindex {
            
            //obtain starting value
            let fvalue = String(characters[findex])
            let bvalue = String(characters[bindex])
            
            if fvalue == bvalue {
               pstatus = true
                
              //update indices
              findex += 1
              bindex -= 1
                
              continue
            }
            else {
                return false
            }
            
        } //end while
                
        return pstatus
    }
    
    
    
    /// Determines if the String can be arranged to produce a palindrome.
    /// - Returns: a true or false value
    func isPalindromePermutation() -> Bool { // Mom

        var lettersSet: Set<String> = [] // o
        
        for char in self { // m
            let lowercase = char.lowercased()
            if lettersSet.contains(lowercase) {
                lettersSet.remove(lowercase)
            } else {
                lettersSet.insert(lowercase)
            }
        }
        return lettersSet.count < 2
    }

}
