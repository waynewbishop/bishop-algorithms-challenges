//
//  backwards.swift
//  
//
//  Created by Wayne Bishop on 7/6/20.
//

import Foundation

extension Array where Element: Comparable {
    
    /**
      Reverse elements in sequential order - O(n).
     
     - Returns: The collection of elements in reversed order.
     */
    
    func backwards() -> Array<Element?>? {
        
        //trivial case
        guard self.count != 0 else {
            return nil
        }
    
        //establish an empty array for later storage
        var output = Array<Element?>(repeatElement(nil, count: self.count))
        var current: Int = 0
        
    
        //iterate forwards
        while current < self.count {
            
           let item = self[current]
           let newposition = (self.count - 1) - current
           
           output[newposition] = item
        
           current += 1
        }
            
        return output
    }

    
}
