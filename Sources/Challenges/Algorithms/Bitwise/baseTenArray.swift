//
//  baseTenArray.swift
//  
//
//  Created by Wayne Bishop on 4/30/21.
//

import Foundation

/**
 The `toBaseTen` algorithm returns base-10 value from binary
 value represented in an Array.

 - Returns: an Int` that represents the binary equilvalent.
 - Complexity: O(n) - linear time.
 */

extension Array where Element: Comparable {
    
    
    public mutating func toBaseTen() -> Int {

        var pos: Int = 1
        var total: Int = 0
        
        while self.count > 0 {
            
            let item = self.removeLast()
            

            //convert to base-10
            if let base = item as? Int {
              total += base * pos
              pos = pos * 2
            }
        }
    
     
     return total

     }
    
}
    
