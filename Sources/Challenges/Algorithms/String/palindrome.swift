//
//  Palindrome.swift
//  Challenges
//
//  Created by Wayne Bishop on 6/27/20.
//

import Foundation


extension String {
    
    /**
    Determines if a specified `String` qualifies as a palindrome. In other words,
    can the string
    - Important: The actual runtime is `O(n/2)`or greater. However, since constants
    are cancelled in Big-O Notation, we say the algorithm runs in `O(n) - linear time`.
    - Returns: The number of coins needed .
    - Complexity: O(n) - linear time.
    */

    public func isPalidrome() -> Bool  {
        
        var pstatus: Bool = false
                
        //convert to array
        let characters = Array(self)
        
        var findex: Int = characters.startIndex
        var bindex: Int = characters.endIndex - 1

        //obtain starting value
        let fvalue = String(characters[findex])
        let bvalue = String(characters[bindex])
        
        //compare the forward and backward indices
        while findex < bindex {
            
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

}
