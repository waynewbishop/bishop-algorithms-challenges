//
//  selectionSort.swift
//  
//
//  Created by Wayne Bishop on 7/6/20.
//

import Foundation

extension Array where Element: Comparable {
    
    
    /**
      Rank items from the lowest to highest by iterating through
     the array and swapping the current iteration with the lowest value in the rest of the array
     until it reaches the end of the array. performance of O(n2).

     - Returns: An `Array` of sorted elements.
     - Complexity: O(n2) - linear time.
     */
    
    func selectionSort() -> Array<Element> {
        
        
        //check for trivial case
        guard self.count > 1 else {
            return self
        }
        
        
        //mutated copy
        var output: Array<Element> = self
        
        
        for primaryindex in 0..<output.count {
            
            
            var minimum = primaryindex
            var secondaryindex = primaryindex + 1
            
            
            while secondaryindex < output.count {
                
                print("comparing \(output[minimum]) and \(output[secondaryindex])")
                
                // store lowest value as minimum
                if output[minimum] > output[secondaryindex] {
                    minimum = secondaryindex
                }
                
                secondaryindex += 1
            }
            
            
            // swap minimum value with array iteration
            if primaryindex != minimum {
                output.swapAt(primaryindex, minimum)
            }
            
        }
        
        
        return output
        
    }
    
}

