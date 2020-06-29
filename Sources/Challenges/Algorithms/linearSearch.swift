//
//  linearSearch.swift
//  Challenges
//
//  Created by Wayne Bishop on 6/26/20.
//

import Foundation

extension Array where Element: Comparable {
    
    /**
     Linear search provides a basic idea as to how the efficiency of the algorithm is effected as its
     input size grows. In this case, all collection values must be checked to find `evalue`.

     - Parameter evalue: The value to find in the `Array` collection.
     - Returns: a `boolean` value indicating if `evalue` was found.
     - Complexity: O(n) - linear time.
     */
    
    public func linearSearch(for evalue: Element) -> Bool {
                
        //check all possible values
        for number in self {
            if number == evalue {
                return true
            }
        }
        
        return false
        
    }
    
    
}
