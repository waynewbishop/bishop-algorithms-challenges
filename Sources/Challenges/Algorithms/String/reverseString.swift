//
//  File.swift
//  
//
//  Created by Wayne Bishop on 6/29/20.
//

import Foundation


extension String {
    
    //reverse string order - in place O(n)
    public func reverse() -> String {
        
         /*
         notes: While this operation would normally be done with the
         native characters.reversed() method, this has been added as an example interview question.
         */
                
        //convert to array
        var characters = Array(self)
        
        var findex: Int = characters.startIndex
        var bindex: Int = characters.endIndex - 1
        
        
        while findex < bindex {
            
            //swap(&characters[findex], &characters[bindex]) - Swift 3.0
            characters.swapAt(findex, bindex)

            
            //update values
            findex += 1
            bindex -= 1
            
            
        } //end while
    
        
        return String(characters)
        
    }
    
}
