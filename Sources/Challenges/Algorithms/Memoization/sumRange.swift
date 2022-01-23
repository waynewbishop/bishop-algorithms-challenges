//
//  sumRange.swift
//  
//
//  Created by Wayne Bishop on 11/15/20.
//

import Foundation


extension BSTree {
    
    /// For a given BST, returns the total value between a low and high value. O(n) - all cases
    /// - Parameters:
    ///   - low: The specified low value
    ///   - high: The specified high value
    /// - Returns: The total value for the given range
    
    func sumRangeTotal(_ low: Int, _ high: Int) -> Int {
        
        var total: Int = 0
        
        //trailing closure
        root.traverse { (key: T) in
            
            if let entity = key as? Int {
                if (entity >= low) && (entity <= high) {
                    total += entity
                }
            }
            
        }
        
        return total
    }
    
        
    /// For a given BST, returns the sequence of values between a low and high value. O(n) - all cases
    /// - Parameters:
    ///   - low: The specified low value
    ///   - high: The specified high value
    /// - Returns: The total value for the given range
    
    func sumRangeSequence(_ low: Int, _ high: Int) -> Array<Int>? {
        
        var sequence = Array<Int>()
        
        //trailing closure
        root.traverse { (key: T) in
            
            if let entity = key as? Int {
                if (entity >= low) && (entity <= high) {
                    sequence.append(entity)
                }
            }
            
        }
            
        return sequence.count == 0 ? nil: sequence
    }

}
