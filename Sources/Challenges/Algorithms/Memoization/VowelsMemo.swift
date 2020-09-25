//
//  VowelsMemo.swift
//  
//
//  Created by Wayne Bishop on 9/18/20.
//

import Foundation

extension String {
    
    //reverse string order
   public func reverseVowelsMemo() -> String {
                
        //convert to array
        var characters = Array(self)

        let vowels =  Set(arrayLiteral: "a", "e", "i", "o", "u")
        
        //forward and backward indicies
        var findex: Int = characters.startIndex
        var bindex: Int = characters.endIndex - 1
    
        //what comes next?

        var firstIndexToSwap = -1
        var lastIndexToSwap = -1
        
        while findex < bindex {

          // get the first vowel index
          while firstIndexToSwap < 0 && findex < bindex {
            if vowels.contains("\(characters[findex])") {
              firstIndexToSwap = findex
            }
            
            findex += 1
          }

          // get the last vowel index
          while lastIndexToSwap < 0 && findex < bindex {
            if vowels.contains("\(characters[bindex])") {
              lastIndexToSwap = bindex
            }
            
            bindex -= 1
          }
          
          if firstIndexToSwap > -1 && lastIndexToSwap > -1 && firstIndexToSwap != lastIndexToSwap {
            characters.swapAt(firstIndexToSwap, lastIndexToSwap)
          }
            
            //update values
            firstIndexToSwap = -1
            lastIndexToSwap = -1
            
        } //end while
        
        
        return String(characters)
        
    }
    
}
